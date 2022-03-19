using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(1))
        {
            InteractionRelay ir = FindObjectOfType<InteractionRelay>();
            ir.PlaySceneDialogue();
        }
        int dayNum = -1;
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            dayNum = 1;
        }
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            dayNum = 2;
        }
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            dayNum = 3;
        }
        if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            dayNum = 4;
        }
        if (Input.GetKeyDown(KeyCode.Alpha5))
        {
            dayNum = 5;
        }
        if(dayNum!= -1)
        {
            InkReader.Instance.SetDay(dayNum);
        }
    }
}
