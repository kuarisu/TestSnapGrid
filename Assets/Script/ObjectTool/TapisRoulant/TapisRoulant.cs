using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TapisRoulant : MonoBehaviour {

    public int x, z;



     public void SetXandZ()
    {
        x = this.GetComponent<Object_Rotation>().m_x;
        z = this.GetComponent<Object_Rotation>().m_z;
    }
}
