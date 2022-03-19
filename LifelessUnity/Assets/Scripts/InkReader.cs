using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class InkReader : MonoBehaviour
{
    public static InkReader Instance { get; private set; }
    private void Awake()
    {
        Instance = this;
    }

    [SerializeField]
    private TextAsset InkJson;

    private Story Story;

    // Start is called before the first frame update
    void Start()
    {
        Story = new Story(InkJson.text);
        if (Story.canContinue)
        {
            Story.Continue();
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            if (DialoguePrinter.IsShowing && Story.currentChoices.Count == 0)
            {
                if (DialoguePrinter.IsPrinting)
                {
                    DialoguePrinter.Instance.JumpToEnd();
                }
                else if (Story.canContinue)
                {
                    PrintNextLine();
                }
                else
                {
                    DialoguePrinter.Instance.HideDialogue();
                }
            }
        }
    }

    public void Interact(string setting, string itemName)
    {
        Story.ChoosePathString($"{setting}.{itemName}");
        PrintNextLine();
    }

    public bool PrintNextLine()
    {
        if (Story.canContinue)
        {
            DialoguePrinter.Instance.PrintLine(Story.Continue());
            return true;
        }
        return false;
    }
}
