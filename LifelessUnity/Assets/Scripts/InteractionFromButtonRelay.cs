using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionFromButtonRelay : MonoBehaviour
{
    InteractionRelay Relay;
    // Start is called before the first frame update
    void Start()
    {
        Relay = GetComponentInParent<InteractionRelay>();
    }


    public void RelayClick()
    {
        if (DialoguePrinter.AllowsOtherInteractions())
        {
            Relay.RelayToReader(name);
        }
    }
}
