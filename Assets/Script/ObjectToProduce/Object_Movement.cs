using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Object_Movement : MonoBehaviour
{

    private bool isActive;
    private Rigidbody rigi;
    private Vector3 direction;
    public float vitesse = 5;
    private int goX, goZ; // 1 ou -1

    private Material carcasse;

    private void Awake()
    {
        isActive = false;
        rigi = GetComponent<Rigidbody>();
        direction = new Vector3();
    }

    public void Active()
    {
        isActive = true;
    }

    void Update()
    {
        if (isActive /*&& !PlayerInfo.pause*/)
        {

            direction.Set(goX * vitesse * Time.deltaTime, 0, goZ * vitesse * Time.deltaTime);
            Debug.Log(direction);
            rigi.velocity = direction;
        }
    }

    public void SensDirection(int p_x, int p_z)
    {
        goX = p_x;
        goZ = p_z;
    }

   


}



