using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractionFromButtonRelay : MonoBehaviour
{
    InteractionRelay Relay;
    [SerializeField]
    Animator Anim;

    Coroutine SparkRoutineRef;

    // Start is called before the first frame update
    void Start()
    {
        Relay = GetComponentInParent<InteractionRelay>();
        foreach (Button b in GetComponentsInChildren<Button>())
        {
            Graphic image = b.targetGraphic;
            Color newColour = image.color;
            newColour.a = 0;
            image.color = newColour;
        }
        SparkRoutineRef = StartCoroutine(SparkleRoutine());
    }

    private float SparkleDelay => Random.Range(10f, 15f);

    private IEnumerator SparkleRoutine()
    {
        float delay = SparkleDelay;
        while (true)
        {
            if (DialoguePrinter.AllowsOtherInteractions())
            {
                delay -= Time.deltaTime;
                if(delay <= 0f)
                {
                    Anim.SetTrigger("Sparkle");
                    delay = SparkleDelay;
                }
            }

            yield return null;
        }
    }

    public void RelayClick()
    {
        if (DialoguePrinter.AllowsOtherInteractions())
        {
            Relay.RelayToReader(name);
            StopCoroutine(SparkRoutineRef);
            SparkRoutineRef = null;
        }
    }
}
