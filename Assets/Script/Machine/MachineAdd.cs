using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachineAdd : MonoBehaviour {

    private GameObject m_CarcasseGameObject;
    [SerializeField]
    private CarcasseAConstruire carcasse;
    [SerializeField]
    private CarcasseAConstruire AAssembler;
    private Vector3 move;
    public int Xdir, Zdir;
    public Collider coll;
    Object_Rotation m_ObjectRotationValues;

    // Use this for initialization
    void Start () {
        move = new Vector3();
        carcasse = null; AAssembler = null;
        coll = coll.GetComponent<Collider>();
        m_ObjectRotationValues = this.GetComponent<Object_Rotation>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        Xdir = m_ObjectRotationValues.m_x;
        Zdir = m_ObjectRotationValues.m_z;
        if (other.transform.root.tag == "Object")
        {
            if (other.transform.root.GetComponent<CarcasseAConstruire>() != null && other.transform.root.GetComponent<CarcasseAConstruire>().GetMateriau().GetTypeObj().Equals("velo"))
            {
                if (carcasse == null)
                {
                    m_CarcasseGameObject = other.transform.root.gameObject;
                    carcasse = other.transform.root.GetComponent<CarcasseAConstruire>();
                    carcasse.Physic.SetActive(false);
                    other.transform.root.GetComponent<CarcasseAConstruire>().SensDirection(0, 0);
                    other.transform.root.GetComponent<Rigidbody>().Sleep();
                    //other.GetComponent<Rigidbody>().useGravity = false;
                    other.enabled = false; //don't forget -> true
                }
                else
                {
                    Destroy(carcasse.gameObject);
                    Destroy(other.gameObject);
                    carcasse = null;
                }

            }
            else
            {
                if (AAssembler == null)
                {
                    AAssembler = other.transform.root.GetComponent<CarcasseAConstruire>();
                    other.transform.root.GetComponent<CarcasseAConstruire>().SensDirection(0, 0);
                    other.transform.root.GetComponent<Rigidbody>().Sleep();
                    other.transform.root.GetComponent<CarcasseAConstruire>().Physic.SetActive(false);
                    //other.GetComponent<Rigidbody>().useGravity = false;
                    other.enabled = false; //don't forget -> true
                }
                else
                {
                    Destroy(AAssembler.gameObject);
                    Destroy(other.gameObject);
                    AAssembler = null;
                }
            }
            if (carcasse != null && AAssembler != null)
            {
                
                move.Set(Xdir * PlayerInfo.vitesse * Time.deltaTime, 0, Xdir * PlayerInfo.vitesse * Time.deltaTime);

                Debug.Log(AAssembler.GetMateriau().GetTypeObj());
                switch (AAssembler.GetMateriau().GetTypeObj())
                {

                    case "pedale":
                        if (((Velo)carcasse.GetMateriau()).GetPedale() < 2)
                        {
                            ((Velo)carcasse.GetMateriau()).SetPedale(1);
                            DepartCarca();
                        }
                        else
                        {
                            AssemblageEnTrop();
                        }
                        break;
                    case "selle":
                        if (!((Velo)carcasse.GetMateriau()).Getselle())
                        {
                            ((Velo)carcasse.GetMateriau()).SetSelle(true);
                            DepartCarca();
                        }
                        else
                        {
                            AssemblageEnTrop();
                        }
                        break;
                    case "roue":
                        if (((Velo)carcasse.GetMateriau()).GetRoue() < 2)
                        {
                            ((Velo)carcasse.GetMateriau()).SetRoue(1);
                            DepartCarca();
                        }
                        else
                        {
                            AssemblageEnTrop();
                        }
                        break;
                    case "cadre":
                        if (((Velo)carcasse.GetMateriau()).GetCadre() == null)
                        {
                            ((Velo)carcasse.GetMateriau()).SetCadre((Cadre)AAssembler.GetMateriau());
                            DepartCarca();
                        }
                        else
                        {
                            AssemblageEnTrop();
                        }
                        break;
                    case "guidon":
                        if (((Velo)carcasse.GetMateriau()).GetGuidon() == null)
                        {
                            ((Velo)carcasse.GetMateriau()).SetGuidon((Guidon)AAssembler.GetMateriau());
                            DepartCarca();
                        }
                        else
                        {
                            AssemblageEnTrop();
                        }
                        break;
                        //a inserer la suite

                }
            }
        }
    }

    private void DepartCarca()
    {
        Destroy(AAssembler.gameObject);
        AAssembler = null;
        coll.enabled = false;
        carcasse.Physic.SetActive(true);
        m_CarcasseGameObject.GetComponent<Rigidbody>().WakeUp();
        //carcasse.GetComponent<Rigidbody>().useGravity = true;
        carcasse.SensDirection(Xdir, Zdir);
        carcasse = null;
    }

    private void AssemblageEnTrop()
    {
        Destroy(carcasse.gameObject);
        Destroy(AAssembler.gameObject);
    }

}
