using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Guidon : Materiau {

    public string m_Couleur;

    public Guidon() : base("guidon")
    {
        m_Couleur = "rouge";
    }

    public string GetCouleur()
    {
        return m_Couleur;
    }

    public void SetCouleur(string p_NomCouleur)
    {
        m_Couleur = p_NomCouleur;
    }

}
