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

    //public GameObject m_ObjectWithShader;
    public GameObject m_MainVisual;

    Material[] m_MaterialsArray;

    void Update()
    {
        //m_MaterialsArray = m_MainVisual.GetComponentInChildren<Renderer>().materials;
        //m_ObjectWithShader.GetComponent<Renderer>().materials;
    }

	public void StartCoroutine()
    {
        StartCoroutine(ModifyShader());
    }

    public void StopCoroutine()
    {
        StopAllCoroutines();
    }

    IEnumerator ModifyShader()
    {
        while (true)
        {
            switch (m_ObjectToolState)
            {
                case ObjectToolState.Placed:

                    foreach (Transform child in m_MainVisual.transform)
                    {
                        if(child.transform.childCount > 0)
                        {
                            foreach (Transform secondchild in child.transform)
                            {
                                if (secondchild.GetComponent<Renderer>() != null)
                                {
                                    m_MaterialsArray = secondchild.GetComponent<Renderer>().materials;

                                    for (int i = 0; i < m_MaterialsArray.Length; i++)
                                    {
                                        m_MaterialsArray[i].SetFloat("_Pose", 0);
                                        m_MaterialsArray[i].SetFloat("_Isclipping", 0);
                                    }

                                    secondchild.GetComponent<Renderer>().materials = m_MaterialsArray;
                                }
                            }
                        }
                        if (child.GetComponent<Renderer>() != null)
                        {
                            m_MaterialsArray = child.GetComponent<Renderer>().materials;

                            for (int i = 0; i < m_MaterialsArray.Length; i++)
                            {
                                m_MaterialsArray[i].SetFloat("_Pose", 0);
                                m_MaterialsArray[i].SetFloat("_Isclipping", 0);
                            }

                            child.GetComponent<Renderer>().materials = m_MaterialsArray;
                        }
                    }
       
                    break;

                case ObjectToolState.CanBePlaced:


                    foreach (Transform child in m_MainVisual.transform)
                    {
                        if (child.transform.childCount > 0)
                        {
                            foreach (Transform secondchild in child.transform)
                            {
                                if (secondchild.GetComponent<Renderer>() != null)
                                {
                                    m_MaterialsArray = secondchild.GetComponent<Renderer>().materials;

                                    for (int i = 0; i < m_MaterialsArray.Length; i++)
                                    {
                                        m_MaterialsArray[i].SetFloat("_Pose", 1);
                                        m_MaterialsArray[i].SetFloat("_Isclipping", 0);
                                    }

                                    secondchild.GetComponent<Renderer>().materials = m_MaterialsArray;
                                }
                            }
                        }
                        if (child.GetComponent<Renderer>() != null)
                        {
                            m_MaterialsArray = child.GetComponent<Renderer>().materials;

                            for (int i = 0; i < m_MaterialsArray.Length; i++)
                            {
                                m_MaterialsArray[i].SetFloat("_Pose", 1);
                                m_MaterialsArray[i].SetFloat("_Isclipping", 0);
                            }

                            child.GetComponent<Renderer>().materials = m_MaterialsArray;
                        }
                    }

                    break;

                case ObjectToolState.CanNotBePlaced:


                    foreach (Transform child in m_MainVisual.transform)
                    {
                        if (child.transform.childCount > 0)
                        {
                            foreach (Transform secondchild in child.transform)
                            {
                                if (secondchild.GetComponent<Renderer>() != null)
                                {
                                    m_MaterialsArray = secondchild.GetComponent<Renderer>().materials;

                                    for (int i = 0; i < m_MaterialsArray.Length; i++)
                                    {
                                        m_MaterialsArray[i].SetFloat("_Pose", 1);
                                        m_MaterialsArray[i].SetFloat("_Isclipping", 1);
                                    }

                                    secondchild.GetComponent<Renderer>().materials = m_MaterialsArray;
                                }
                            }
                        }
                        if (child.GetComponent<Renderer>() != null)
                        {
                            m_MaterialsArray = child.GetComponent<Renderer>().materials;

                            for (int i = 0; i < m_MaterialsArray.Length; i++)
                            {
                                m_MaterialsArray[i].SetFloat("_Pose", 1);
                                m_MaterialsArray[i].SetFloat("_Isclipping", 1);
                            }

                            child.GetComponent<Renderer>().materials = m_MaterialsArray;
                        }
                    }

                    break;
            }


           

            yield return new WaitForEndOfFrame();
        }
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
