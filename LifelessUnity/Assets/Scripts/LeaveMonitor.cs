using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LeaveMonitor : MonoBehaviour
{
    [SerializeField]
    GameObject LeaveObject;

    bool CurrentState;

    private void Start()
    {
        CurrentState = LeaveObject.activeSelf;
    }

    // Update is called once per frame
    void Update()
    {
        bool thingsBusy = SceneDirector.IsDirecting || DialoguePrinter.IsShowing;
        // If things busy, exit NOT active. Things true = active false.
        if(thingsBusy == CurrentState)
        {
            CurrentState = !CurrentState;
            LeaveObject.SetActive(CurrentState);
        }
    }
}
