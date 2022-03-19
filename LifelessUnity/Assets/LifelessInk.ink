VAR DayNumber = 1		// 1 - monday, 3 - wednesday, 5 - friday
VAR MissingColleague = false
VAR MissingBarista = false
VAR MissingWorker = false
VAR MissingDriver = false

VAR Chara = "Charlie"

->Home

=== Home ===
{ DayNumber:
    -   1: 
        Another morning.  Another start of the week.  
        Another Monday.                                 #add
        For many the most hated day.  A day to dread the slog to the office, to fear the work to be done, to hope for the end.
        But this is foolish.  Monday is an opportunity.  A day where you can show your worth to the world.  Worth that comes from the quality, and capability, of your actions.
        How can one not delight in a Monday, when all other days have less of the working week to look forward to.
        For to be perfect is such bliss,    #poetry 
        When fond greeted by Monday's kiss. #poetry #add
        An opportunity arose,               #poetry #add
        Upon this day fools love to loathe. #poetry #add
        Yes... I think today will be a good day.
    -   5:
        \*Beep beep\*       #poetry
        \*Beep beep\*       #poetry #add
        Shut it.
        Urgh, I'm so tired.
        And hungry.  Definitely time for breakfast.
        There's nothing left.
        I had the last breakfast food last night.
        That's fine, I can-
        I'll just-
        There's-
        Um... I'll...
        Wait until lunch.   #add
        I guess...          #add
}
-> END

= Plant
{ DayNumber:
    -   1: I haven't known you very long, but I hope our time together lasts.
    -   2: 
        {Chara}: My little plant,         #poetry 
        {Chara}: I think I relate.           #poetry #add
        {Chara}: Your small budding flower,  #poetry #add
        {Chara}: Turned out oh so great.     #poetry #add
        
        {Chara}: And here you shall sit,     #poetry 
        {Chara}: To be pretty your fate.     #poetry #add
        {Chara}: Your counterpart might,     #poetry #add
        {Chara}: Like to share a-            #poetry #add
        
        {Chara}: Um... Nevermind.
    -   3: { MissingBarista:
            {Chara}: Hey good lookin'. I noticed you were good looking.
            {Chara}: And...          #add
            {Chara}: Hey.
            {Chara}: .....           #add
            {Chara}: .............   #add
        - else: 
            Why?
        }
    -   4: I can still see you.  So... maybe...
    -   5: Perhaps a weekend might be good.
        I could try relaxing like you do.
}

-> END

= Monitor
Having a laptop I can plug in keeps my desk free of the clutter a mouse and keyboard would bring.
-> END

= Books
Alright, let's see... 
{ cycle:
	-	"May the odds be ever in your favor." //Suzanne Collins, The Hunger Games
		{ DayNumber <= 3: Odds? I make my own choices. | ... They are not. }
	-   "As he read, I fell in love the way you fall asleep: slowly, and then all at once."  // Hank Green, The Fault in Our Stars
	    { MissingBarista: I'm sorry you'll have to lose that. | Hmm. }
	-   "To be, or not to be"                           #poetry // Hamlet, Shakespeare
	    {Chara}: That is the question:                           #poetry
	    {Chara}: Whether 'tis nobler in the mind to suffer       #poetry
	    {Chara}: The slings and arrows of outrageous fortune,    #poetry #add
	    {Chara}: Or to take arms against a sea of troubles       #poetry #add
	    {Chara}: And by opposing end them.                       #poetry #add
}
-> END

= Bed
{ DayNumber:
    -   1: 
        A functional object at a functional size.
        Bigger is not always better.
        Where would I put my chair? #add
    -   2:
        If I can make something of myself; why can't you make yourself too
    -   3:
        I bed you: adieu.
    -   4:
        A tempting thing.
    -   5:
        To stay, to sleep;              #poetry
        To sleep: perchance to dream:   #poetry #add
        Ay, there's my wish             #poetry #add
}
-> END

=== CoffeeShop ===

{ DayNumber:
    -   1: 
    -   2:
    -   3: (AbsentBarista) Where is he?
    
}
-> END
