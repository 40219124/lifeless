using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionRelay : MonoBehaviour
{
    public string Setting = "";

    public void PlaySceneDialogue()
    {
        InkReader.Instance.SceneDialogue(Setting);
    }

    public void RelayToReader(string itemName)
    {
        InkReader.Instance.Interact(Setting, itemName);
    }
}
