using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_DropDownFor : MonoBehaviour {

    public GameObject m_DargDown;

    public int m_IndexOfOption;

    public void Descale()
    {
        m_DargDown.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
        m_DargDown.transform.localPosition = new Vector3(0f, 0f, 0f);
    }

    public void Scale()
    {
        m_DargDown.transform.localScale = new Vector3(2, 2, 2);
        m_DargDown.transform.localPosition = new Vector3(0f, 17.7f, 0f);
    }


    public void ChangeEnable()
    {
        m_IndexOfOption = m_DargDown.GetComponent<Dropdown>().value;

        switch (m_IndexOfOption)
        {
            case 0:
                this.transform.root.GetComponent<MachineFor>().nomElement = "pedale";
                break;
            case 1:
                this.transform.root.GetComponent<MachineFor>().nomElement = "roue";
                break;
        }


    }
}
