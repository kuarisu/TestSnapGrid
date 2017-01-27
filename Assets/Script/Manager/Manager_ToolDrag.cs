using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Manager_ToolDrag : MonoBehaviour {

    public GameObject m_TargetGameObject;
    public bool m_Dragging;
    public ObjectTool_ModifShader m_ModifierShader;
    public LayerMask m_LayerMask;
    public bool m_CanChangeTarget;

    public ParticleSystem m_Pose;

    public static Manager_ToolDrag Instance;


    private void Awake()
    {
        if (Manager_ToolDrag.Instance != null)
        {
            Debug.Log("hello");

            Destroy(this.gameObject);
            return;
        }

        Manager_ToolDrag.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }

    void Start()
    {
        m_Dragging = false;
        m_TargetGameObject = null;
        m_CanChangeTarget = true;
    }



    // Update is called once per frame
    void Update()
    {
        if (m_TargetGameObject != null)
        {
            if (Input.GetMouseButtonUp(0) && m_TargetGameObject.layer != 5)
            {
                if (m_Dragging && m_ModifierShader.m_ObjectToolState != ObjectToolState.CanNotBePlaced && m_TargetGameObject.layer != 5)
                {
                    ParticleSystem clone = Instantiate(m_Pose);
                    clone.transform.position = m_TargetGameObject.transform.root.transform.position + (Vector3.up/2);
                    m_ModifierShader.m_ObjectToolState = ObjectToolState.Placed;
                    m_TargetGameObject.transform.localScale = Vector3.one;
                    m_Dragging = false;
                    m_CanChangeTarget = true;
                    m_TargetGameObject.GetComponent<ObjectTool_ModifShader>().StartCoroutine();
                    m_TargetGameObject.GetComponent<ObjectTool_ModifShader>().StopCoroutine();

                }
                else if (!m_Dragging && m_ModifierShader != null)
                {
                    m_ModifierShader.m_ObjectToolState = ObjectToolState.CanBePlaced;
                    m_TargetGameObject.transform.localScale = new Vector3(1.25f, 1.25f, 1.25f);
                    m_TargetGameObject.GetComponent<ObjectTool_ModifShader>().StartCoroutine();
                    m_Dragging = true;
                    m_CanChangeTarget = false;
                }
            }
            if (Input.GetMouseButtonUp(1) && m_Dragging)
            {
                if (m_TargetGameObject.GetComponent<ObjectTool_ModifShader>() != null)
                {
                    m_TargetGameObject.GetComponent<ObjectTool_ModifShader>().m_MainVisual.transform.Rotate(new Vector3(0, 90, 0));

                    if (m_TargetGameObject.GetComponent<Object_Rotation>() != null)
                    {
                        m_TargetGameObject.GetComponent<Object_Rotation>().m_NbRotation++;
                        m_TargetGameObject.GetComponent<Object_Rotation>().Rotated();
                    }
                }
            }
        }
        else
        {
            m_Dragging = false;
            m_CanChangeTarget = true;
        }

        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit _hit;
        if (Physics.Raycast(ray, out _hit, m_LayerMask) )
        {
            if (m_Dragging)
            {
                if (_hit.collider.transform.tag == "Tile" && m_TargetGameObject != null)
                {
                    m_TargetGameObject.transform.position = _hit.collider.transform.position;
                }
                if(_hit.collider.transform.tag == "Delete" && Input.GetMouseButtonUp(0))
                {
                    SupprBlock();
                }
            }
            else
            {
                if(_hit.collider.tag == "Spawn" && Input.GetMouseButtonUp(1))
                {
                    _hit.collider.transform.root.gameObject.GetComponent<MachineStart>().Spawn();
                }
                if (m_CanChangeTarget && _hit.collider.tag != "Delete")
                {
                    if (_hit.collider.gameObject.layer != 5)
                    {
                        m_TargetGameObject = _hit.collider.gameObject.transform.root.gameObject;
                        m_ModifierShader = m_TargetGameObject.GetComponent<ObjectTool_ModifShader>();
                    }
                    else
                    {
                        m_TargetGameObject = _hit.collider.gameObject;
                    }
                }
            }
        }


    }

    public void SupprBlock()
    {
        if(m_Dragging && m_TargetGameObject != null)
        {
            if (m_TargetGameObject.GetComponent<ObjectTool_ModifShader>().m_ScriptNb != null)
            {
                m_TargetGameObject.GetComponent<ObjectTool_ModifShader>().m_ScriptNb.DecreaseNb();
                Destroy(m_TargetGameObject);
            }
        }
    }
}
