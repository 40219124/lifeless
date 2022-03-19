using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractionRelay : MonoBehaviour
{
    public string Setting = "";

    private void Start()
    {
    }

    public void PlaySceneDialogue()
    {
        InkReader.Instance.SceneDialogue(Setting);
    }

    public void RelayToReader(string itemName)
    {
        InkReader.Instance.Interact(Setting, itemName);
    }
}
