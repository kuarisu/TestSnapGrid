using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_IntantiateObject : MonoBehaviour {

    public bool m_InfiniteObject;
    public GameObject m_ObjectToInstiate;
    public int m_NbOfObjectDispo;
    public Text m_NbOfObjectText;

    public GameObject m_Description;

    void Start()
    {
        ChangeText();
        m_Description.gameObject.SetActive(false);
    }

    public void LeftClick()
    {

        if (!m_InfiniteObject)
        {
            if(m_NbOfObjectDispo > 0)
            {
                m_NbOfObjectDispo--;
                ChangeText();
                InstantiateObject();
            }
        }
        else
        {
            InstantiateObject();
        }
    }

    void InstantiateObject()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit _hit;
        if (Physics.Raycast(ray, out _hit))
        {
            GameObject Tool = Instantiate(m_ObjectToInstiate);
            Tool.transform.position = _hit.collider.transform.position;

            Tool.GetComponent<ObjectTool_ModifShader>().m_ObjectToolState = ObjectToolState.CanBePlaced;
            if (!m_InfiniteObject)
                Tool.GetComponent<ObjectTool_ModifShader>().m_ScriptNb = this.GetComponent<UI_IntantiateObject>();


            Manager_ToolDrag.Instance.m_TargetGameObject = Tool;
            Manager_ToolDrag.Instance.m_ModifierShader = Tool.GetComponent<ObjectTool_ModifShader>();

            Manager_ToolDrag.Instance.m_Dragging = false;
        }    

    }

    void ChangeText()
    {
        if (!m_InfiniteObject)
            m_NbOfObjectText.text = "x " + m_NbOfObjectDispo;
        else
            m_NbOfObjectText.text = "Inf";
    } 

    public void DecreaseNb()
    {
        if (m_NbOfObjectDispo > 0)
        {
            m_NbOfObjectDispo++;
            ChangeText();
        }


    }

    public void ShowDescri()
    {
        Debug.Log("hello");
        m_Description.gameObject.SetActive(true);
    }

    public void HideDescri()
    {
        Debug.Log("h2ello");
        m_Description.gameObject.SetActive(false);
    }
}
