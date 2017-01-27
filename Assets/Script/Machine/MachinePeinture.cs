using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachinePeinture : MonoBehaviour {

    public string couleur = "rouge";

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.root.tag == "Object")
        {
            Materiau mat = other.transform.root.GetComponent<CarcasseAConstruire>().GetMateriau();
            if (mat.GetTypeObj().Equals("cadre"))
            {
                ((Cadre)mat).m_Couleur = couleur;
            }
            else if (mat.GetTypeObj().Equals("guidon"))
            {
                ((Guidon)mat).m_Couleur = couleur;
            }
            else if (mat.GetTypeObj().Equals("velo"))
            {
                if (((Velo)mat).GetCadre() != null)
                    ((Cadre)((Velo)mat).GetCadre()).m_Couleur = couleur;
                if (((Velo)mat).GetGuidon() != null)
                    ((Guidon)((Velo)mat).GetGuidon()).m_Couleur = couleur;
            }
            else
            {
                Poubelle(other.gameObject);
            }
        }
    }

    private void Poubelle(GameObject obj)
    {
        Debug.Log("hello");

        Destroy(obj);
    }

}
