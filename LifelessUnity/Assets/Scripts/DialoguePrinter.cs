using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DialoguePrinter : MonoBehaviour
{
    public static DialoguePrinter Instance { get; private set; }

    [SerializeField]
    private GameObject MainObj;
    [SerializeField]
    private TextMeshProUGUI MainText;
    [SerializeField]
    private GameObject NameObj;
    [SerializeField]
    private TextMeshProUGUI NameText;

    public static bool IsShowing { get; private set; }
    public static bool IsPrinting { get; private set; }
    public static bool IsPoetry { get; private set; }
    public float TimePerChar { get; private set; }

    Coroutine PrintingRoutine;
    public static float TimeHidden = 0f;

    private bool DoSlow = false;

    private void Awake()
    {
        Instance = this;
        TimePerChar = 0.03f;
    }

    // Start is called before the first frame update
    void Start()
    {
        Reset();
    }

    public void PrintLine(string line, string name = "", bool addToCurrent = false, bool slow = false)
    {
        if (PrintingRoutine != null)
        {
            HideDialogue();
        }
        DoSlow = slow;
        MainObj.SetActive(true);
        IsShowing = true;
        NameObj.SetActive(!name.Equals(""));
        NameText.text = name;

        PrintingRoutine = StartCoroutine(PrintLineRoutine(line, addToCurrent));
    }

    private IEnumerator PrintLineRoutine(string line, bool addToCurrent = false)
    {
        IsPrinting = true;

        string printed = addToCurrent ? MainText.text : "";
        float elapsed = 0f;
        if (addToCurrent)
        {
            string spacer = printed[printed.Length - 1] switch
            {
                ' ' => "",
                '\n' => "",
                '.' => "  ",
                _ => " "
            };
            line = $"{printed}{spacer}{line}";
        }

        while (printed.Length != line.Length)
        {
            elapsed += Time.deltaTime;
            float timePerChar = TimePerChar * (DoSlow ? 2f : 1f);
            while (elapsed > timePerChar && printed.Length < line.Length)
            {
                printed += line[printed.Length];
                elapsed -= timePerChar;
            }

            MainText.text = printed;
            yield return null;
        }
        IsPrinting = false;
        PrintingRoutine = null;
    }

    public void JumpToEnd()
    {
        StartCoroutine(JumpToEndRoutine());
    }

    private IEnumerator JumpToEndRoutine()
    {
        float regularSpeed = TimePerChar;
        TimePerChar = 0.001f;
        while (IsPrinting)
        {
            yield return null;
        }
        TimePerChar = regularSpeed;
    }

    public void HideDialogue()
    {
        if (PrintingRoutine != null)
        {
            StopCoroutine(PrintingRoutine);
            IsPrinting = false;
            PrintingRoutine = null;
        }
        Reset();
    }

    private void Reset()
    {
        MainText.text = "";
        NameText.text = "";
        MainObj.SetActive(false);
        NameObj.SetActive(false);
        IsShowing = false;
        TimeHidden = Time.time;
    }

    public static bool AllowsOtherInteractions()
    {
        return !(IsShowing || Time.time - TimeHidden < 0.3f);
    }

    public void SetPoetryState(bool state)
    {
        if (state != IsPoetry)
        {
            IsPoetry = state;
            FontStyles fontStyle = MainText.fontStyle;
            if (IsPoetry)
            {
                fontStyle |= FontStyles.Italic;
            }
            else
            {
                fontStyle &= ~FontStyles.Italic;
            }
            MainText.fontStyle = fontStyle;
        }
    }
}
