using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestScript : MonoBehaviour
{
    private bool IsMorning = true;
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
            InkReader.Instance.LocationDialogue(GlobalKnowledge.Location.ToString());
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
        if (dayNum != -1)
        {
            SceneDirector.Instance.DirectDayChange((eDay)dayNum);
        }


        int location = -1;
        if (Input.GetKeyDown(KeyCode.Alpha6))
        {
            location = 0;
        }
        if (Input.GetKeyDown(KeyCode.Alpha7))
        {
            location = 1;
        }
        if (Input.GetKeyDown(KeyCode.Alpha8))
        {
            location = 2;
        }
        if (Input.GetKeyDown(KeyCode.Alpha9))
        {
            location = 3;
        }
        if (Input.GetKeyDown(KeyCode.Alpha0))
        {
            location = 4;
        }
        if (location != -1)
        {
            SceneDirector.Instance.DirectLocationChange((eLocation)location);
        }

        if (Input.GetKeyDown(KeyCode.Tab))
        {
            IsMorning = !IsMorning;
            InkReader.Instance.SetIsMorning(IsMorning);
        }
    }
}
