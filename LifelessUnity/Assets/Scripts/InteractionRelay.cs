using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractionRelay : MonoBehaviour
{
    public string Setting = "";

    private void Start()
    {
        foreach(InteractionFromButtonRelay br in GetComponentsInChildren<InteractionFromButtonRelay>())
        {
            Image image = br.GetComponent<Image>();
            Color newColour = image.color;
            newColour.a = 0;
            image.color = newColour;
        }
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
