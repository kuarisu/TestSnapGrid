using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TapisRoulant : MonoBehaviour {

    public int x, z;

    private void OnTriggerEnter(Collider other)
    {
        //other.GetComponent<CarcasseAConstruire>().SensDirection(x, z);
        //other.GetComponent<CarcasseAConstruire>().Active();
    }
}
