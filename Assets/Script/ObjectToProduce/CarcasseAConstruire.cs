using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CarcasseAConstruire : MonoBehaviour {

    public List<GameObject> m_VisuelsVelo = new List<GameObject>();
    private bool isActive;
    private Rigidbody rigi;
    private Vector3 direction;
    [HideInInspector]
    public float vitesse;
    private int goX, goZ; // 1 ou -1
    public ParticleSystem m_Explsion;

    private Materiau carcasse;
    public GameObject Physic;

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

        m_VisuelsVelo[0].gameObject.SetActive(false);
        m_VisuelsVelo[1].gameObject.SetActive(false);
        m_VisuelsVelo[2].gameObject.SetActive(false);
        m_VisuelsVelo[3].gameObject.SetActive(false);
        m_VisuelsVelo[4].gameObject.SetActive(false);
        m_VisuelsVelo[5].gameObject.SetActive(false);
        m_VisuelsVelo[6].gameObject.SetActive(false);
        m_VisuelsVelo[7].gameObject.SetActive(false);
    }

    public void Active()
    {
        isActive = true;
        ChangeAspect();
    }

    // Update is called once per frame
    void Update()
    {
        ChangeAspect();
        if (isActive /*&& !PlayerInfo.pause*/)
        {

            direction.Set(goX * vitesse * Time.deltaTime, rigi.velocity.y, goZ * vitesse * Time.deltaTime);
            rigi.velocity = direction;
        }


        Ray ray = new Ray(this.transform.position, Vector3.down);
        RaycastHit _hit;

        if (Physics.Raycast(ray, out _hit, 5))
        {
            if(_hit.collider.tag == "Tile" && this.gameObject.transform.root.tag == "Object")
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
        ParticleSystem clone =  Instantiate(m_Explsion);
        clone.transform.position = this.transform.position;
        if(this.gameObject.transform.root.tag == "Object")
        Destroy(this.gameObject);
    }

    public void ChangeAspect()
    {

        if (carcasse != null)
        {
            switch (carcasse.GetTypeObj())
            {
              
                case "velo":
                    Velo velo = ((Velo)carcasse);
                    if (velo.GetCadre() != null)
                    {
                        m_VisuelsVelo[0].gameObject.SetActive(true);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }

                    if (velo.GetGuidon() != null)
                    {
                        m_VisuelsVelo[1].gameObject.SetActive(true);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }

                    if (velo.GetRoue() == 1)
                    {
                        m_VisuelsVelo[5].gameObject.SetActive(true);
                        m_VisuelsVelo[6].gameObject.SetActive(false);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }
                    if (velo.GetRoue() == 2)
                    {
                        m_VisuelsVelo[5].gameObject.SetActive(true);
                        m_VisuelsVelo[6].gameObject.SetActive(true);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }
                    if (velo.Getselle() == true)
                    {
                        m_VisuelsVelo[2].gameObject.SetActive(true);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }
                    if (velo.GetPedale() == 1)
                    {
                        m_VisuelsVelo[3].gameObject.SetActive(true);
                        m_VisuelsVelo[4].gameObject.SetActive(false);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }
                    if (velo.GetPedale() == 2)
                    {
                        m_VisuelsVelo[3].gameObject.SetActive(true);
                        m_VisuelsVelo[4].gameObject.SetActive(true);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }

                    if (velo != null && velo.GetPedale() == 0 && velo.Getselle() == false && velo.GetRoue() == 0 && velo.GetGuidon() == null && velo.GetCadre() == null)
                    {
                        m_VisuelsVelo[0].gameObject.SetActive(false);
                        m_VisuelsVelo[1].gameObject.SetActive(false);
                        m_VisuelsVelo[2].gameObject.SetActive(false);
                        m_VisuelsVelo[3].gameObject.SetActive(false);
                        m_VisuelsVelo[4].gameObject.SetActive(false);
                        m_VisuelsVelo[5].gameObject.SetActive(false);
                        m_VisuelsVelo[6].gameObject.SetActive(false);
                        m_VisuelsVelo[7].gameObject.SetActive(true);
                    }

                    break;

                case "guidon":
                    Guidon guidon = ((Guidon)carcasse);

                    if (guidon != null)
                    {

                        m_VisuelsVelo[0].gameObject.SetActive(false);
                        m_VisuelsVelo[1].gameObject.SetActive(true);
                        m_VisuelsVelo[2].gameObject.SetActive(false);
                        m_VisuelsVelo[3].gameObject.SetActive(false);
                        m_VisuelsVelo[4].gameObject.SetActive(false);
                        m_VisuelsVelo[5].gameObject.SetActive(false);
                        m_VisuelsVelo[6].gameObject.SetActive(false);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }

                    break;
                case "cadre":

                    Cadre cadre = ((Cadre)carcasse);

                    if (cadre != null)
                    {
                        m_VisuelsVelo[0].gameObject.SetActive(true);
                        m_VisuelsVelo[1].gameObject.SetActive(false);
                        m_VisuelsVelo[2].gameObject.SetActive(false);
                        m_VisuelsVelo[3].gameObject.SetActive(false);
                        m_VisuelsVelo[4].gameObject.SetActive(false);
                        m_VisuelsVelo[5].gameObject.SetActive(false);
                        m_VisuelsVelo[6].gameObject.SetActive(false);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    }
                    break;

                case "selle":

                        m_VisuelsVelo[0].gameObject.SetActive(false);
                        m_VisuelsVelo[1].gameObject.SetActive(false);
                        m_VisuelsVelo[2].gameObject.SetActive(true);
                        m_VisuelsVelo[3].gameObject.SetActive(false);
                        m_VisuelsVelo[4].gameObject.SetActive(false);
                        m_VisuelsVelo[5].gameObject.SetActive(false);
                        m_VisuelsVelo[6].gameObject.SetActive(false);
                        m_VisuelsVelo[7].gameObject.SetActive(false);
                    

                    break;

                case "pedale":

                    m_VisuelsVelo[0].gameObject.SetActive(false);
                    m_VisuelsVelo[1].gameObject.SetActive(true);
                    m_VisuelsVelo[2].gameObject.SetActive(false);
                    m_VisuelsVelo[3].gameObject.SetActive(false);
                    m_VisuelsVelo[4].gameObject.SetActive(false);
                    m_VisuelsVelo[5].gameObject.SetActive(false);
                    m_VisuelsVelo[6].gameObject.SetActive(false);
                    m_VisuelsVelo[7].gameObject.SetActive(false);


                    break;

                case "roue":

                    m_VisuelsVelo[0].gameObject.SetActive(false);
                    m_VisuelsVelo[1].gameObject.SetActive(false);
                    m_VisuelsVelo[2].gameObject.SetActive(false);
                    m_VisuelsVelo[3].gameObject.SetActive(false);
                    m_VisuelsVelo[4].gameObject.SetActive(false);
                    m_VisuelsVelo[5].gameObject.SetActive(true);
                    m_VisuelsVelo[6].gameObject.SetActive(false);
                    m_VisuelsVelo[7].gameObject.SetActive(false);


                    break;
            }
        }
    }


}
