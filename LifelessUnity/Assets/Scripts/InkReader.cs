using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using Ink;

public class InkReader : MonoBehaviour
{
    public readonly List<string> CharacterNames = new List<string> { "Charlie", "Barista", "Driver", "Colleague", "Worker" };

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
                    foreach(string tag in Story.currentTags)
                    {
                        if (tag.StartsWith("goto:"))
                        {
                            SceneDirector.Instance.DirectLocationChange((eLocation)System.Enum.Parse(typeof(eLocation), tag.Substring(("goto:").Length)));
                        }
                        if (tag.Equals("nextDay"))
                        {
                            SceneDirector.Instance.DirectDayChange(GlobalKnowledge.Day.NextDay());
                        }
                    }
                    DialoguePrinter.Instance.HideDialogue();
                }
            }
        }
    }

    public void LocationDialogue(string setting)
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
            string speaker = "";
            foreach (string name in CharacterNames)
            {
                if (line.StartsWith(name))
                {
                    if(line[name.Length] == ':')
                    speaker = name;
                    line = line.Substring(name.Length + 1);
                    line.TrimStart(' ');
                }
            }
            DialoguePrinter.Instance.PrintLine(line, name: speaker, addToCurrent: Story.currentTags.Contains("add"));
            DialoguePrinter.Instance.SetPoetryState(Story.currentTags.Contains("poetry"));
            return true;
        }
        return false;
    }

    public void SetDay(int day)
    {
        Story.variablesState["DayNumber"] = day;
    }

    public void SetIsMorning(bool morning)
    {
        Story.variablesState["Morning"] = morning;
    }
}
