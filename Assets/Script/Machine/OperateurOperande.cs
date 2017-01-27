using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OperateurOperande : MonoBehaviour {

    public string op;
    public GameObject m_DropDown;

    public string GetOp()
    {
        return op;
    }

    void Start()
    {
        if(m_DropDown.GetComponent<UI_ScaleDropDown>()!= null)
            ChangeOpOperateur();

        if (m_DropDown.GetComponent<UI_ScaleDropDownColor>() != null)
            ChangeOpColor();

        if (m_DropDown.GetComponent<UI_ScaleDropDownBool>() != null)
            ChangeOpBool();

        if (m_DropDown.GetComponent<UI_ScaleDropDownInt>() != null)
            ChangeOpInt();
    }

    public void SetOp(string p_type)
    {
        op = p_type;
    }

    public void ChangeOpOperateur()
    {
        if (m_DropDown != null)
        {
            switch (m_DropDown.GetComponent<UI_ScaleDropDown>().m_IndexOfOption)
            {
                case 0:
                    op = "=";
                    break;
                case 1:
                    op = ">";
                    break;
                case 2:
                    op = ">=";
                    break;
                case 3:
                    op = "<";
                    break;
                case 4:
                    op = "<=";
                    break;
            }
        }
    }

    public void ChangeOpInt()
    {
        if (m_DropDown != null)
        {
            switch (m_DropDown.GetComponent<UI_ScaleDropDownInt>().m_IndexOfOption)
            {
                case 0:
                    op = "0";
                    break;
                case 1:
                    op = "1";
                    break;
                case 2:
                    op = "2";
                    break;
                case 3:
                    op = "3";
                    break;
            }
        }
    }

    public void ChangeOpBool()
    {
        if (m_DropDown != null)
        {
            switch (m_DropDown.GetComponent<UI_ScaleDropDownBool>().m_IndexOfOption)
            {
                case 0:
                    op = "true";
                    break;
                case 1:
                    op = "false";
                    break;
            }
        }
    }

    public void ChangeOpColor()
    {
        if (m_DropDown != null)
        {
            switch (m_DropDown.GetComponent<UI_ScaleDropDownColor>().m_IndexOfOption)
            {
                case 0:
                    op = "bleu";
                    break;
                case 1:
                    op = "rouge";
                    break;
            }
        }
    }

    public void ChangeObject()
    {
        if (m_DropDown != null)
        {
            switch (m_DropDown.GetComponent<UI_ScaleDropDownObject>().m_IndexOfOption)
            {
            
                case 0:
                    op = "pedale";
                    break;
                case 1:
                    op = "selle";
                    break;
                case 2:
                    op = "roue";
                    break;
                case 3:
                    op = "cadre";
                    break;
                case 4:
                    op = "guidon";
                    break;
            
            }
            this.GetComponentInChildren<MachineIF>().SetOp1(op);
            this.GetComponentInChildren<MachineIF>().ChangeOp();
        }
    }
}
