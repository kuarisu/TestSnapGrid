using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollideReactive : MonoBehaviour {

    public Collider mach;

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Col")
            mach.enabled = true;
    }
}
