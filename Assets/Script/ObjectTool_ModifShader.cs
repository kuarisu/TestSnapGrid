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

    public GameObject m_Tool;

	// Use this for initialization
	void Start () {


		
	}
	
	// Update is called once per frame
	void Update () {
        ModifyShader();
		
	}

    void ModifyShader()
    {
        Material[] m_MaterialsArray = m_Tool.GetComponent<Renderer>().materials;


        switch(m_ObjectToolState)
        {
            case ObjectToolState.Placed:
                m_MaterialsArray[0].SetFloat("_Pose", 0);
                m_MaterialsArray[0].SetFloat("_Isclipping", 0);

                m_MaterialsArray[1].SetFloat("_Pose", 0);
                m_MaterialsArray[1].SetFloat("_Isclipping", 0);


                break;
            case ObjectToolState.CanBePlaced:
                m_MaterialsArray[0].SetFloat("_Pose", 1);
                m_MaterialsArray[0].SetFloat("_Isclipping", 0);

                m_MaterialsArray[1].SetFloat("_Pose", 1);
                m_MaterialsArray[1].SetFloat("_Isclipping", 0);

                break;
            case ObjectToolState.CanNotBePlaced:
                m_MaterialsArray[0].SetFloat("_Pose", 1);
                m_MaterialsArray[0].SetFloat("_Isclipping", 1);

                m_MaterialsArray[1].SetFloat("_Pose", 1);
                m_MaterialsArray[1].SetFloat("_Isclipping", 1);

                break;
        }

        m_Tool.GetComponent<Renderer>().materials = m_MaterialsArray;
    }
}
