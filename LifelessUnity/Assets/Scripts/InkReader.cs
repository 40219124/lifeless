using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using Ink;

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

        Story.onError += (errorMessage, errorType) =>
        {
            if (errorType == ErrorType.Warning)
                Debug.LogWarning(errorMessage);
            else
                Debug.LogError(errorMessage);
        };
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

    public void SceneDialogue(string setting)
    {
        Story.ChoosePathString(setting);
        PrintNextLine();
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
            string line = Story.Continue();
            DialoguePrinter.Instance.PrintLine(line, addToCurrent: Story.currentTags.Contains("add"));
            DialoguePrinter.Instance.SetPoetryState(Story.currentTags.Contains("poetry"));
            return true;
        }
        return false;
    }
}
