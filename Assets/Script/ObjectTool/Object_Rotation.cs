using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Object_Rotation : MonoBehaviour {

    public int m_NbRotation = 1;
    public int m_x = 1;
    public int m_z = 0;

    void Start()
    {
        if (transform.rotation == Quaternion.Euler(0, 0, 0))
        {
            m_NbRotation = 1;
        }
        if (transform.rotation == Quaternion.Euler(0,90,0))
        {
            m_NbRotation = 2;
        }
        if (transform.rotation == Quaternion.Euler(0, 180, 0))
        {
            m_NbRotation = 3;
        }
        if (transform.rotation == Quaternion.Euler(0, 270, 0))
        {
            m_NbRotation = 4;
        }
        Rotated();
    }

    public void Rotated()
    {
        if(m_NbRotation == 5)
        {
            m_NbRotation = 1;
        }
        switch (m_NbRotation)
        {
            case 1:
                m_x = 1;
                m_z = 0;
                break;
            
            case 2:
                m_x = 0;
                m_z = -1;
                break;

            case 3:
                m_x = -1;
                m_z = 0;
                break;

            case 4:
                m_x = 0;
                m_z = 1;
                break;
        }
    }


}
