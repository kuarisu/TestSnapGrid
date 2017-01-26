using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachineIF : MonoBehaviour {



    public GameObject m_Operende01;
    public GameObject m_Operateur;

    private bool isOP;
    private string op1, op1Type, op2, operateur;
    private object operandeVal;

    private void Awake() //Voir pour le mettre dans une fonction à chaque fois que le joueur clique sur la liste pour changer l'opérateur et/ou l'opérande  
    {
        op1 = m_Operende01.GetComponent<OperateurOperande>().GetOp();
        switch (op1)
        {
            case "pedale":
                op1Type = "int";
                break;
            case "selle":
                op1Type = "bool";
                break;
            case "roue":
                op1Type = "int";
                break;
            case "cadre":
                op1Type = "string";
                break;
            case "guidon":
                op1Type = "string";
                break;
        }
        operateur = m_Operateur.GetComponent<OperateurOperande>().GetOp();
        //operandeVal = null; (à remettre si dans l'awake)
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.tag.Equals("op"))
        {
            operandeVal = null;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag.Equals("op"))
        {
            op2 = other.GetComponent<OperateurOperande>().GetOp();
            switch (op2)
            {
                case "0":
                    NumVerifie(other.gameObject);
                    break;
                case "1":
                    NumVerifie(other.gameObject);
                    break;
                case "2":
                    NumVerifie(other.gameObject);
                    break;
                case "3":
                    NumVerifie(other.gameObject);
                    break;
                case "4":
                    NumVerifie(other.gameObject);
                    break;
                case "true":
                    BoolVerifie(other.gameObject);
                    break;
                case "false":
                    BoolVerifie(other.gameObject);
                    break;
                case "rouge":
                    ColorVerifie(other.gameObject);
                    break;
                case "bleu":
                    ColorVerifie(other.gameObject);
                    break;
                default:
                    Poubelle(other.gameObject);
                    break;
            }
        }else if(operandeVal != null)
        {
            CarcasseAConstruire AComparer = other.GetComponent<CarcasseAConstruire>();
            if (AComparer.GetMateriau().GetTypeObj().Equals(op1) && op1.Equals("cadre"))
            {
                CompareColorSimpleElement(AComparer, "cadre", (string)operandeVal);
            }
            else if(AComparer.GetMateriau().GetTypeObj().Equals(op1) && op1.Equals("guidon"))
            {
                CompareColorSimpleElement(AComparer, "guidon", (string)operandeVal);
            }
            else if (AComparer.GetMateriau().GetTypeObj().Equals("velo"))
            {
                if (CompareVelo(((Velo)AComparer.GetMateriau())))
                {
                    //animation reussite
                }else
                {
                    Poubelle(other.gameObject);
                }
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
    }


    private void NumVerifie(GameObject obj)
    {
        if (op1Type.Equals("int"))
        {
            operandeVal = int.Parse(op2);
        }
        else
        {
            Poubelle(obj);
            operandeVal = null;

        }
    }

    private void BoolVerifie(GameObject obj)
    {
        if (op1Type.Equals("bool") && !(operateur.Equals("<") || operateur.Equals(">") || operateur.Equals("<=") || operateur.Equals(">=")))
        {
            operandeVal = bool.Parse(op2);
        }
        else
        {
            Poubelle(obj);
            operandeVal = null;
        }
    }

    private void ColorVerifie(GameObject p_obj)
    {
        if (op1Type.Equals("string") && !(operateur.Equals("<") || operateur.Equals(">") || operateur.Equals("<=") || operateur.Equals(">=")))
        {
            operandeVal = op2;
        }
        else
        {
            Poubelle(p_obj);
            operandeVal = null;
        }
    }


    private void Poubelle(GameObject p_obj)
    {
        Destroy(p_obj);
    }
    
    private void CompareColorSimpleElement(CarcasseAConstruire p_car, string p_type, string p_color)
    {
        if (p_type.Equals("cadre"))
        {
            if (((Cadre)p_car.GetMateriau()).m_Couleur.Equals(p_color))
            {
                //animation reussite
            }else
            {
                Poubelle(p_car.gameObject);
            }
        }
        else if(p_type.Equals("guidon"))
        {
            if (((Guidon)p_car.GetMateriau()).m_Couleur.Equals(p_color))
            {
                //animation reussite
            }
            else
            {
                Poubelle(p_car.gameObject);
            }
        }
    }

    private bool CompareColorVelo(Velo p_velo, string p_type, string p_color)
    {
        if (p_type.Equals("cadre"))
        {
            if (p_velo.GetCadre().m_Couleur.Equals(p_color))
            {
                //animation reussite
                return true;
            }
            else
            {
                return false;
            }
        }
        else if (p_type.Equals("guidon"))
        {
            if (p_velo.GetGuidon().m_Couleur.Equals(p_color))
            {
                //animation reussite
                return true;
            }
            else
            {
                return false;
            }
        }
        return false;
    }

    private bool CompareVelo(Velo p_velo)
    {
        switch (op1)
        {
            case "pedale":
                return CompareInt(p_velo.GetPedale());
            case "selle":
                return CompareBool(p_velo);
            case "roue":
                return CompareInt(p_velo.GetRoue());
            case "cadre":
                return CompareColorVelo(p_velo, "cadre", (string)operandeVal);
            case "guidon":
                return CompareColorVelo(p_velo, "guidon", (string)operandeVal);
            default:
                return false;
        }
    }

    private bool CompareBool(Velo p_velo)
    {
        if (p_velo.Getselle() == (bool)operandeVal)
            return true;
        return false;
    }

    private bool CompareInt(int p_ele)
    {
        switch (operateur)
        {
            case "<":
                if (p_ele < (int)operandeVal)
                    return true;
                return false;
            case ">":
                if (p_ele > (int)operandeVal)
                    return true;
                return false;
            case "<=":
                if (p_ele <= (int)operandeVal)
                    return true;
                return false;
            case ">=":
                if (p_ele >= (int)operandeVal)
                    return true;
                return false;
            case "=":
                if (p_ele == (int)operandeVal)
                    return true;
                return false;
            default:
                return false;
        }
    }

}
