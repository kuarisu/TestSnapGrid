using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_ScaleDropDownObject : MonoBehaviour {


    public GameObject m_DargDown;

    public int m_IndexOfOption;

    public void Descale()
    {
        m_DargDown.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
        m_DargDown.transform.localPosition = new Vector3(-18.9f, 2.9f, -91.3f);
    }

    public void Scale()
    {
        m_DargDown.transform.localScale = new Vector3(2, 2, 2);
        m_DargDown.transform.localPosition = new Vector3(-18.9f, 20.6f, -91.3f);
    }


    public void ChangeEnable()
    {
        m_IndexOfOption = m_DargDown.GetComponent<Dropdown>().value;

        this.transform.root.GetComponent<OperateurOperande>().ChangeObject();
    }
}
