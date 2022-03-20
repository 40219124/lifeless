using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractionRelay : MonoBehaviour
{
    public eLocation Setting = eLocation.none;

    public void RelayToReader(string itemName)
    {
        InkReader.Instance.Interact(Setting.ToString(), itemName);
    }
}
