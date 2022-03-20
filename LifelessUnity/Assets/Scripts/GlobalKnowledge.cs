using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public enum eDay { none = 0, Monday, Tuesday, Wednesday, Thursday, Friday }
public enum eCharacter { none = -1, Monologue, Charlie, Driver, Colleague, Barista, Worker }

public static class EnumHelper
{
    public static eDay NextDay(this eDay day) => (eDay)(((int)day + 1) % ((int)eDay.Friday + 1));
}

public class GlobalKnowledge : MonoBehaviour
{
    public static eLocation Location = eLocation.Home;
    public static bool IsMorning = true;
    public static eDay Day = eDay.Monday;
    public static eCharacter Talking = eCharacter.none;

    public static Action<eDay> OnAdvanceDay;
    public static Action<eLocation> OnChangeLocation;
    public static Action<eCharacter> OnCharacterSpeaking;
    public static Action<bool> OnSetIsMorning;

    private static void OnDay(eDay day)
    {
        Day = day;
    }
    private static void OnLocation(eLocation loc)
    {
        Location = loc;
    }
    private static void OnCharacter(eCharacter chara)
    {
        Talking = chara;
    }
    private static void OnMorning(bool morn)
    {
        IsMorning = morn;
    }

    public static void Initialise()
    {
        OnAdvanceDay += OnDay;
        OnChangeLocation += OnLocation;
        OnCharacterSpeaking += OnCharacter;
        OnSetIsMorning += OnMorning;
    }

    private void Awake()
    {
        Initialise();
    }

}
