using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractionRelay : MonoBehaviour
{
    public string Setting = "";

    public void PlaySceneDialogue()
    {
        InkReader.Instance.LocationDialogue(Setting);
    }

    public void RelayToReader(string itemName)
    {
        InkReader.Instance.Interact(Setting, itemName);
    }
}
