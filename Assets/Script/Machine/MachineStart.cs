using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum Choix
{
    Velo,
    Pedale,
    Selle,
    Roue,
    Cadre,
    Guidon
}

public class MachineStart : MonoBehaviour {




    public Choix choix;     

    public GameObject carcasseAttache;

    private float timer;
    public float timerRef = 3;
    public int Xmove, Zmove;
    private bool test;

    public Materiau typeVehicule()
    {
        switch (choix)
        {
            case Choix.Velo:
                return new Velo();
            case Choix.Pedale:
                return new Materiau("pedale");
            case Choix.Selle:
                return new Materiau("selle");
            case Choix.Roue:
                return new Materiau("roue");
            case Choix.Cadre:
                return new Cadre();
            case Choix.Guidon:
                return new Guidon();
            default:
                return new Velo();
            // si d'autre vehicule -> inserer code
        }
    }

    // Use this for initialization
    void Start () {
        timer = 0;
        test = false;
    }
	
	// Update is called once per frame
	void Update () {
        if (!PlayerInfo.pause && test)
        {
                timer = 0;
                SetXandZ();
                GameObject carca = Instantiate(carcasseAttache);
                carca.transform.position = this.transform.position + new Vector3(0,1,0);
                carca.GetComponent<CarcasseAConstruire>().SetVehicule(typeVehicule());
                carca.GetComponent<CarcasseAConstruire>().SensDirection(Xmove, Zmove);
                carca.GetComponent<CarcasseAConstruire>().Active();
                test = false;
            
        }
	}

    void SetXandZ()
    {
        Xmove = this.GetComponent<Object_Rotation>().m_x;
        Zmove = this.GetComponent<Object_Rotation>().m_z;
        //Debug.Log(x + " " + z);
    }

    public void Spawn()
    {
        test = true;
    }
}
