using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class DayCardByDay
{
    public eDay Day;
    public Sprite Sprite;
}

public class SceneDirector : MonoBehaviour
{
    public static SceneDirector Instance { get; private set; }

    public static bool IsDirecting { get; private set; }
    [SerializeField]
    Animator Anim;
    [SerializeField]
    Image DayCard;
    public List<DayCardByDay> DayCards = new List<DayCardByDay>();

    private eDay TransDay = eDay.none;
    private eLocation TransLocation = eLocation.none;
    

    private void Awake()
    {
        Instance = this;
        IsDirecting = true;
        TransDay = eDay.Monday;
        TransLocation = eLocation.Home;
        DayCard.sprite = DayCards.Find(x => x.Day.Equals(TransDay)).Sprite;
    }

    private void OnEnable()
    {

    }
    private void OnDisable()
    {

    }

    public void DirectLocationChange(eLocation loc)
    {
        TransLocation = loc;
        StartCoroutine(FadeInToNarration());
    }

    public void DirectDayChange(eDay day)
    {
        if(day == eDay.none)
        {
            // ~~~ End game yaaaaaaaaaallllllllllllll
        }
        TransDay = day;
        StartCoroutine(DayChangeRoutine());
    }


    private IEnumerator DayChangeRoutine()
    {
        IsDirecting = true;
        DayCard.sprite = DayCards.Find(x => x.Day.Equals(TransDay)).Sprite;
        Anim.SetTrigger("DayTransition");
        yield return null;
    }

    private IEnumerator FadeInToNarration()
    {
        IsDirecting = true;
        Anim.SetTrigger("LocationTransition");
        yield return null;
    }


    private IEnumerator SceneOpeningNarration()
    {
        yield return new WaitForSeconds(1f);

        InkReader.Instance.LocationDialogue(GlobalKnowledge.Location.ToString());
        CleanUp();
    }

    private void AnimTransitionObscuring()
    {
        if (TransLocation != eLocation.none)
        {
            GlobalKnowledge.OnChangeLocation?.Invoke(TransLocation);
        }
        if(TransDay != eDay.none)
        {
            InkReader.Instance.SetDay((int)TransDay);
            GlobalKnowledge.OnAdvanceDay?.Invoke(TransDay);
        }
    }

    private void AnimTransitionEnded()
    {
        StartCoroutine(SceneOpeningNarration());
    }

    private void CleanUp()
    {
        TransDay = eDay.none;
        TransLocation = eLocation.none;
        IsDirecting = false;
    }
}
