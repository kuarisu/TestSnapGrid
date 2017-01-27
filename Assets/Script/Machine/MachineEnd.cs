using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachineEnd : MonoBehaviour {

    public bool objectifPedale, objectifSelle, objectifRoue, objectifCadre, objectifGuidon, objectifNombre;
    public int nbPedale, nbRoue, nombre;
    public string couleurCadre, couleurGuidon;

    private int rangP, rangS, rangR, rangC, rangG, rangN;

    private bool[] objectif;


    private int nbIncremente;

    private void Awake()
    {
        int nbobjectif = 0;
        if (objectifPedale)
        {
            rangP = nbobjectif;
            nbobjectif++;
            if (nbPedale > 2)
                nbPedale = 2;
        }
        if (objectifSelle)
        {
            rangS = nbobjectif;
            nbobjectif++;
        }
        if (objectifRoue)
        {
            rangR = nbobjectif;
            nbobjectif++;
            if (nbRoue > 2)
                nbRoue = 2;
        }
        if (objectifCadre)
        {
            rangC = nbobjectif;
            nbobjectif++;
            if (!(couleurCadre.Equals("rouge") || couleurCadre.Equals("bleu")))
            {
                couleurCadre = "rouge";
            }
        }
        if (objectifGuidon)
        {
            rangG = nbobjectif;
            nbobjectif++;
            if (!(couleurGuidon.Equals("rouge") || couleurGuidon.Equals("bleu")))
            {
                couleurGuidon = "rouge";
            }
        }
        if (objectifNombre)
        {
            nbIncremente = 0;
        }else
        {
            nombre = 1;
        }

        objectif = new bool[nbobjectif];
        for (int i = 0; i < objectif.Length; i++)
            objectif[i] = false;

    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.tag == "Object")
        {
            if (other.transform.root.transform.GetComponent<CarcasseAConstruire>().GetMateriau().GetTypeObj().Equals("velo"))
            {
                Velo veloTester = (Velo)other.transform.root.transform.GetComponent<CarcasseAConstruire>().GetMateriau();
                if (objectifPedale && nbPedale == veloTester.GetPedale())
                {
                    objectif[rangP] = true;
                }
                if (objectifSelle && veloTester.Getselle())
                {
                    objectif[rangS] = true;
                }
                if (objectifRoue && nbRoue == veloTester.GetRoue())
                {
                    objectif[rangR] = true;
                }
                if (objectifCadre && couleurCadre.Equals(veloTester.GetCadre()))
                {
                    objectif[rangC] = true;
                }
                if (objectifGuidon && couleurGuidon.Equals(veloTester.GetGuidon()))
                {
                    objectif[rangG] = true;
                }
            }



            bool objectifFini = true;
            for (int i = 0; i < objectif.Length; i++)
            {
                if (!objectif[i])
                {
                    objectifFini = false;
                    break;
                }
            }

            if (objectifFini)
            {
                nbIncremente++;
            }
            for (int i = 0; i < objectif.Length; i++)
            {
                objectif[i] = false;
            }

            Debug.Log("hello");

            Destroy(other.gameObject); // velo reussit

            if (nbIncremente == nombre)
            {
                //niveau suivant
            }
        }
    }

    private void poubelle(GameObject obj)
    {
        Debug.Log("hello");

        Destroy(obj);
    }

}
