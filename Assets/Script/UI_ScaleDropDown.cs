using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_ScaleDropDown : MonoBehaviour {

    public GameObject m_DargDown;

    public List<GameObject> m_ListVisual = new List<GameObject>();
    public int m_IndexOfOption;

    public void Descale()
    {
        m_DargDown.transform.localScale = new Vector3(0.5f,0.5f,0.5f);
        m_DargDown.transform.localPosition = new Vector3(-18.9f, 18.6f, -91.3f);
    }

    public void Scale()
    {
        m_DargDown.transform.localScale = new Vector3(2,2,2);
        m_DargDown.transform.localPosition = new Vector3(-18.9f, 36.3f, -91.3f);
    }

    public void ChangeEnable()
    {
        int _i = 0;
        m_IndexOfOption = m_DargDown.GetComponent<Dropdown>().value;
        foreach (GameObject VisualMachine in m_ListVisual)
        {
            if(_i != m_IndexOfOption)
            {
                VisualMachine.SetActive(false);
            }
            else
            {
                VisualMachine.SetActive(true);
            }

            _i++;
        }
    }

}
