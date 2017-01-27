using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_DropDownSpawn : MonoBehaviour {

    public GameObject m_DargDown;
    public MachineStart m_Start;

    public List<GameObject> m_ListVisual = new List<GameObject>();
    public int m_IndexOfOption;

    public void Descale()
    {
        m_DargDown.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
        m_DargDown.transform.localPosition = new Vector3(0, 0, 0);
    }

    public void Scale()
    {
        m_DargDown.transform.localScale = new Vector3(2, 2, 2);
        m_DargDown.transform.localPosition = new Vector3(0, 17.7f, 0);
    }


    public void ChangeEnable()
    {
        m_IndexOfOption = m_DargDown.GetComponent<Dropdown>().value;
        switch (m_IndexOfOption)
        {
            case 0:
                m_Start.choix = Choix.Velo;
                break;
            case 1:
                m_Start.choix = Choix.Pedale;
                break;
            case 2:
                m_Start.choix = Choix.Selle;
                break;
            case 3:
                m_Start.choix = Choix.Roue;
                break;
            case 4:
                m_Start.choix = Choix.Cadre;
                break;             
            case 5:
                m_Start.choix = Choix.Guidon;
                break;

        }
        int _i = 0;

        foreach (GameObject VisualMachine in m_ListVisual)
        {
            if (_i != m_IndexOfOption)
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
