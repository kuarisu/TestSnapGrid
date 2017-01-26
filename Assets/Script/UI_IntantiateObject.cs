using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_IntantiateObject : MonoBehaviour {

    public bool m_InfiniteObject;
    public GameObject m_ObjectToInstiate;
    public int m_NbOfObjectDispo;

    public void LeftClick()
    {

        if (!m_InfiniteObject)
        {
            if(m_NbOfObjectDispo > 0)
            {
                m_NbOfObjectDispo--;
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

            Manager_ToolDrag.Instance.m_TargetGameObject = Tool;
            Manager_ToolDrag.Instance.m_ModifierShader = Tool.GetComponent<ObjectTool_ModifShader>();

            Manager_ToolDrag.Instance.m_Dragging = false;
        }    

    }
}
