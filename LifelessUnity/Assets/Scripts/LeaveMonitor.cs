using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LeaveMonitor : MonoBehaviour
{
    [SerializeField]
    GameObject LeaveObject;

    bool CurrentState;
    bool PreviousIsMorning;

    [SerializeField]
    Sprite LeaveSprite;
    [SerializeField]
    Sprite SleepSprite;
    [SerializeField]
    Image LeaveIcon;

    private void Start()
    {
        CurrentState = LeaveObject.activeSelf;
        PreviousIsMorning = GlobalKnowledge.IsMorning;
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

        if(PreviousIsMorning != GlobalKnowledge.IsMorning)
        {
            if (GlobalKnowledge.IsMorning)
            {
                LeaveIcon.sprite = LeaveSprite;
            }
            else
            {
                LeaveIcon.sprite = SleepSprite;
            }
            PreviousIsMorning = GlobalKnowledge.IsMorning;
        }
    }
}
