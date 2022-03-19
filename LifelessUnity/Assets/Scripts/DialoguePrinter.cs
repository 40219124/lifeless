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
    public float TimePerChar { get; private set; }

    Coroutine PrintingRoutine;
    public static float TimeHidden = 0f;

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

    public void PrintLine(string line, string name = "")
    {
        if (PrintingRoutine != null)
        {
            HideDialogue();
        }

        MainObj.SetActive(true);
        IsShowing = true;
        NameObj.SetActive(!name.Equals(""));
        NameText.text = name;

        PrintingRoutine = StartCoroutine(PrintLineRoutine(line));
    }

    private IEnumerator PrintLineRoutine(string line)
    {
        IsPrinting = true;

        float elapsed = 0f;
        string printed = "";

        while (printed.Length != line.Length)
        {
            elapsed += Time.deltaTime;
            while (elapsed > TimePerChar && printed.Length < line.Length)
            {
                printed += line[printed.Length];
                elapsed -= TimePerChar;
            }

            MainText.text = printed;
            yield return null;
        }
        IsPrinting = false;
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
}
