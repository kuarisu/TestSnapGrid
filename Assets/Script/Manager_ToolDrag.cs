using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Manager_ToolDrag : MonoBehaviour {

    GameObject m_TargetGameObject;
    bool m_Dragging;
    ObjectTool_ModifShader m_ModifierShader;
    public LayerMask m_LayerMask;

    void Start()
    {
        m_Dragging = false;
        m_TargetGameObject = null;
    }



    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonUp(0))
        {
            if (m_Dragging && m_ModifierShader.m_ObjectToolState != ObjectToolState.CanNotBePlaced)
            {
                m_ModifierShader.m_ObjectToolState = ObjectToolState.Placed;
                m_TargetGameObject.transform.localScale = Vector3.one;
                m_Dragging = false;

            }
            else if (!m_Dragging)
            {
                m_ModifierShader.m_ObjectToolState = ObjectToolState.CanBePlaced;
                m_TargetGameObject.transform.localScale = new Vector3 (1.25f,1.25f,1.25f);
                m_Dragging = true;
            }

        }
        if (Input.GetMouseButtonUp(1) && m_Dragging)
        {
            Debug.Log("hello");
            m_TargetGameObject.transform.Rotate(new Vector3(0, 90, 0));
        }


        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit _hit;
        if (Physics.Raycast(ray, out _hit, m_LayerMask))
        {
            if (m_Dragging)
            {
                if (_hit.collider.transform.tag == "Tile")
                {
                    m_TargetGameObject.transform.position = _hit.collider.transform.position;
                }
            }
            else
            {
                m_TargetGameObject = _hit.collider.gameObject.transform.parent.gameObject;
                m_ModifierShader = m_TargetGameObject.GetComponent<ObjectTool_ModifShader>();
            }
        }


    }
}
