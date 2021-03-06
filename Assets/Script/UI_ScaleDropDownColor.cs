﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_ScaleDropDownColor : MonoBehaviour {

    public GameObject m_DargDown;
    public TextMesh m_Variable;

    public int m_IndexOfOption;

    public void Descale()
    {
        m_DargDown.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
        m_DargDown.transform.localPosition = new Vector3(-18.9f, 2.9f, -27.9f);
    }

    public void Scale()
    {
        m_DargDown.transform.localScale = new Vector3(2, 2, 2);
        m_DargDown.transform.localPosition = new Vector3(-18.9f, 20.6f, -27.9f);
    }


    public void ChangeEnable()
    {
        m_IndexOfOption = m_DargDown.GetComponent<Dropdown>().value;
        switch (m_IndexOfOption)
        {
            case 0:
                m_Variable.text = "bleu";
                break;
            case 1:
                m_Variable.text = "rouge";
                break;
        }

        this.transform.root.GetComponent<OperateurOperande>().ChangeOpColor();
    }

}
