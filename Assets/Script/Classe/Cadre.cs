using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cadre : Materiau {

        public string m_Couleur;

        public Cadre() : base("cadre")
        {
            m_Couleur = "Bleu";
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
