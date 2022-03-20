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
    }

    private void OnEnable()
    {
        if (SparkRoutineRef == null)
        {
            SparkRoutineRef = StartCoroutine(SparkleRoutine());
        }
    }
    private void OnDisable()
    {
        if (SparkRoutineRef != null)
        {
            StopCoroutine(SparkRoutineRef);
            SparkRoutineRef = null;
        }
    }

    private float SparkleDelay => Random.Range(10f, 15f);

    private IEnumerator SparkleRoutine()
    {
        if (name.Equals("Exit"))
        {
            yield break;
        }
        yield return new WaitForSeconds(0.5f);
        float delay = Random.Range(0f, 3f);
        while (true)
        {
            if (DialoguePrinter.AllowsOtherInteractions() && !SceneDirector.IsDirecting)
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
        if (DialoguePrinter.AllowsOtherInteractions() && !SceneDirector.IsDirecting)
        {
            Relay.RelayToReader(name);
            if (SparkRoutineRef != null)
            {
                StopCoroutine(SparkRoutineRef);
                SparkRoutineRef = null;
            }
        }
    }
}
