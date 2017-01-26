using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachineFor : MonoBehaviour {

    public List<CarcasseAConstruire> stockAConstruir;
    public CarcasseAConstruire carcasse;
    public Collider coll;

    private GameObject m_CarcasseGameObject;
    public string nomElement; // nom que stock la machine (guidon, pedale, etc)
    public int nbAssemblage; //nb bouble
    public int tailleStock = 50;
    public int Xdir, Zdir;
    Object_Rotation m_ObjectRotationValues;



    private void Awake()
    {
        stockAConstruir = new List<CarcasseAConstruire>();
        carcasse = null;
        coll = coll.GetComponent<Collider>();
        m_ObjectRotationValues = this.GetComponent<Object_Rotation>();
    }

    private void OnTriggerEnter(Collider other)
    {
        Xdir = m_ObjectRotationValues.m_x;
        Zdir = m_ObjectRotationValues.m_z;

        if (other.transform.root.tag == "Object")
        {

            if (other.transform.root.GetComponent<CarcasseAConstruire>().GetMateriau().GetTypeObj().Equals("velo"))
            {
                if (carcasse == null)
                {
                    m_CarcasseGameObject = other.transform.root.gameObject;
                    carcasse = other.transform.root.GetComponent<CarcasseAConstruire>();
                    carcasse.Physic.SetActive(false);
                    carcasse = other.transform.root.GetComponent<CarcasseAConstruire>();
                    carcasse.SensDirection(0, 0);
                    other.transform.root.GetComponent<Rigidbody>().Sleep();
                    other.enabled = false;
                }
                else
                {
                    Poubelle(other.transform.root.gameObject);
                }
            }
            else if (other.transform.root.GetComponent<CarcasseAConstruire>().GetMateriau().GetTypeObj().Equals(nomElement))
            {
                if (stockAConstruir.Count < tailleStock)
                {
                    stockAConstruir.Add(other.transform.root.GetComponent<CarcasseAConstruire>());
                    other.transform.root.GetComponent<CarcasseAConstruire>().SensDirection(0, 0);
                    other.transform.root.GetComponent<Rigidbody>().Sleep();
                    other.transform.root.GetComponent<CarcasseAConstruire>().Physic.SetActive(false);
                    other.enabled = false;
                }
                else
                {
                    Poubelle(other.gameObject);
                }
            }
            else
            {
                Poubelle(other.gameObject);
            }


            if (carcasse != null && stockAConstruir.Count >= nbAssemblage)
            {
                for (int i = nbAssemblage - 1; i >= 0; i--)
                {
                    Destroy(stockAConstruir[i].gameObject);
                    stockAConstruir.RemoveAt(i);
                }
                switch (nomElement)
                {
                    case "pedale":
                        Debug.Log("premiere etape");
                        ((Velo)carcasse.GetMateriau()).SetPedale(nbAssemblage);
                        if (((Velo)carcasse.GetMateriau()).GetPedale() > 2)
                        {
                            Poubelle(carcasse.gameObject);
                            carcasse = null;
                        }
                        else
                        {
                            DepartCarca();
                            Debug.Log("seconde etape");
                        }
                        break;
                    case "roue":
                        ((Velo)carcasse.GetMateriau()).SetRoue(nbAssemblage);
                        if (((Velo)carcasse.GetMateriau()).GetRoue() > 2)
                        {
                            Poubelle(carcasse.gameObject);
                            carcasse = null;
                        }
                        else
                        {
                            DepartCarca();
                        }
                        break;
                }
            }
        }
    }

    private void Poubelle(GameObject obj)
    {
        Debug.Log("hello");
        Destroy(obj);
    }

    private void DepartCarca()
    {
        coll.enabled = false;
        carcasse.Physic.SetActive(true);
        m_CarcasseGameObject.GetComponent<Rigidbody>().WakeUp();
        carcasse.SensDirection(Xdir, Zdir);
        carcasse = null;
    }

}
