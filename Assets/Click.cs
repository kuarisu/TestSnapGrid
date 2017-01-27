using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Click : MonoBehaviour {

	public GameObject credits;
	bool creditsOpen = false;
    public GameObject m_Sound;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;

		if (Physics.Raycast(ray, out hit ))
			{
			if( hit.collider.tag == "Quit" && Input.GetMouseButtonDown(0))
				{
				Debug.Log ("oula");
				Application.Quit();
				}

			if (hit.collider.tag == "Credits" && Input.GetMouseButtonDown (0))
				{
				if (creditsOpen == false) 
				{
					credits.SetActive (true);
					creditsOpen = true;
				} else 
				{
					credits.SetActive (false);
					creditsOpen = false;
				}

            }
            if (hit.collider.tag == "StartGame" && Input.GetMouseButtonDown(0))
            {
                Debug.Log("hello");
                Destroy(m_Sound);
                Application.LoadLevel(1);
                Destroy(this);

            }


        }
}
}