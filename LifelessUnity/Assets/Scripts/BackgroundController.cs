using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class LocationSpriteByLocation
{
    public eLocation Location;
    public Sprite Sprite;
}

[System.Serializable]
public class RelayByLocation
{
    public eLocation Location;
    public InteractionRelay Relay;
}

public enum eLocation { none = -1, Home, Bus, Work, CoffeeShop, FastFood, Ending }

public class BackgroundController : MonoBehaviour
{
    public static BackgroundController Instance { get; private set; }
    private void Awake()
    {
        Instance = this;
    }

    [SerializeField]
    Image Image;
    public List<LocationSpriteByLocation> LocationSprites = new List<LocationSpriteByLocation>();
    public List<RelayByLocation> InteractionObjects = new List<RelayByLocation>();

    eLocation CurrentLocation = eLocation.Home;

    private void OnEnable()
    {
        GlobalKnowledge.OnChangeLocation += ChangeScene;
    }
    private void OnDisable()
    {
        GlobalKnowledge.OnChangeLocation -= ChangeScene;
    }

    public void ChangeScene(eLocation location)
    {
        if (CurrentLocation != location)
        {
            Image.sprite = LocationSprites.Find(x => x.Location.Equals(location)).Sprite;
            foreach (RelayByLocation go in InteractionObjects)
            {
                go.Relay.gameObject.SetActive(go.Location.Equals(location));
            }
            CurrentLocation = location;
        }
    }
}
