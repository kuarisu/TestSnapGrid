using System.Collections;
using System.Collections.Generic;
using UnityEngine;

 public enum ObjectToolState
{
    Placed,
    CanBePlaced,
    CanNotBePlaced
}

public class ObjectTool_ModifShader : MonoBehaviour {

    public ObjectToolState m_ObjectToolState;

    public GameObject m_ObjectToInstantiate;

    public GameObject m_Visual;

    
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
       ModifyShader();	
	}

    void ModifyShader()
    {
        
        //Debug.Log(m_Visual.GetComponent<Renderer>().materials.Length);

        Material[] m_MaterialsArray = m_Visual.GetComponent<Renderer>().materials;
        switch (m_ObjectToolState)
        {
            case ObjectToolState.Placed:
                m_MaterialsArray[0].SetFloat("_Pose", 0);
                m_MaterialsArray[0].SetFloat("_Isclipping", 0);
                m_MaterialsArray[2].SetFloat("_Pose", 0);
                m_MaterialsArray[2].SetFloat("_Isclipping", 0);

                m_MaterialsArray[1].SetFloat("_Pose", 0);
                m_MaterialsArray[1].SetFloat("_Isclipping", 0);


                break;
            case ObjectToolState.CanBePlaced:
                m_MaterialsArray[0].SetFloat("_Pose", 1);
                m_MaterialsArray[0].SetFloat("_Isclipping", 0);
                m_MaterialsArray[2].SetFloat("_Pose", 1);
                m_MaterialsArray[2].SetFloat("_Isclipping", 0);

                m_MaterialsArray[1].SetFloat("_Pose", 1);
                m_MaterialsArray[1].SetFloat("_Isclipping", 0);

                break;
            case ObjectToolState.CanNotBePlaced:
                m_MaterialsArray[0].SetFloat("_Pose", 1);
                m_MaterialsArray[0].SetFloat("_Isclipping", 1);
                m_MaterialsArray[2].SetFloat("_Pose", 1);
                m_MaterialsArray[2].SetFloat("_Isclipping", 1);

                m_MaterialsArray[1].SetFloat("_Pose", 1);
                m_MaterialsArray[1].SetFloat("_Isclipping", 1);

                break;
        }

        m_Visual.GetComponent<Renderer>().materials = m_MaterialsArray;
    }

    void OnTriggerEnter(Collider col)
    {
        if (m_ObjectToolState != ObjectToolState.CanNotBePlaced)
        {
            m_ObjectToolState = ObjectToolState.CanNotBePlaced;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (m_ObjectToolState == ObjectToolState.CanNotBePlaced)
        {
            m_ObjectToolState = ObjectToolState.CanBePlaced;
        }
    }
}
