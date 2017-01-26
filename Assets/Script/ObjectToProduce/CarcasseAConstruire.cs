using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CarcasseAConstruire : MonoBehaviour {

    private bool isActive;
    private Rigidbody rigi;
    private Vector3 direction;
    [HideInInspector]
    public float vitesse;
    private int goX, goZ; // 1 ou -1

    private Materiau carcasse;

    public Materiau GetMateriau()
    {
        return carcasse;
    }

    private void Awake()
    {
        isActive = false;
        rigi = GetComponent<Rigidbody>();
        direction = new Vector3();
        vitesse = PlayerInfo.vitesse;
    }

    public void Active()
    {
        isActive = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (isActive /*&& !PlayerInfo.pause*/)
        {

            direction.Set(goX * vitesse * Time.deltaTime, rigi.velocity.y, goZ * vitesse * Time.deltaTime);
            rigi.velocity = direction;
        }


        Ray ray = new Ray(this.transform.position, Vector3.down);
        RaycastHit _hit;

        if (Physics.Raycast(ray, out _hit, 5))
        {
            if(_hit.collider.tag == "Tile")
            {
                Ray _raySecond = new Ray(new Vector3(transform.position.x + goX * 0.75f, transform.position.y, transform.position.z + goZ * 0.75f), Vector3.down);
                RaycastHit _hitSecond;
                Debug.DrawRay(new Vector3(transform.position.x + (goX * 0.75f), transform.position.y, transform.position.z +( goZ * 0.75f)), Vector3.down, Color.blue);
                if (Physics.Raycast(_raySecond, out _hitSecond, 5))
                {
                    if (_hitSecond.collider.tag == "Tile")
                    {
                        Destroy();
                    }
                }
                   
            }
            Debug.Log(_hit.collider.name);
        }
    }


    public void SensDirection(int p_x, int p_z)
    {
        goX = p_x;
        goZ = p_z;
    }

    public void SetVehicule(Materiau p_car)
    {
        carcasse = p_car;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.tag == "ChangerDirection")
        {
            TapisRoulant _tapisRoulant = other.transform.root.GetComponent<TapisRoulant>();
            _tapisRoulant.SetXandZ();
            SensDirection(_tapisRoulant.x, _tapisRoulant.z);
            Active();
        }

        if(other.transform.tag == "Object")
        {
            Destroy();
        }
    }

    void Destroy()
    {
        //Instantiate particle system to current position
        Destroy(this.gameObject);
    }



}
