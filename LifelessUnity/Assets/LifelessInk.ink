VAR DayNumber = 1		// 1 - monday, 3 - wednesday, 5 - friday
VAR Morning = true
VAR MissingColleague = false
VAR MissingBarista = false
VAR MissingWorker = false
VAR MissingDriver = false

VAR Chara = "Charlie"
VAR Colleague = "Colleague"

->Home

=== Home ===
{ DayNumber:
    -   1: 
        {Morning:
            Another morning.  Another start of the week.  
            Another Monday.                                 #add
            For many the most hated day.  A day to dread the slog to the office, to fear the work to be done, to hope for the end.
            But this is foolish.  Monday is an opportunity.  A day where you can show your worth to the world.  Worth that comes    from the quality, and capability, of your actions.
            How can one not delight in a Monday, when all other days have less of the working week to look forward to.
            For to be perfect is such bliss,    #poetry 
            When fond greeted by Monday's kiss. #poetry #add
            An opportunity arose,               #poetry #add
            Upon this day fools love to loathe. #poetry #add
            Yes... I think today will be a good day.
        -   else:
            A good day deserves to be followed by a good meal.
            This fridge is getting a little empty, I'll have to go shopping soon.
            That's fine, I have the time. I can just go later in the week.
        }
    -   5:
        \*Beep beep\*       #poetry
        \*Beep beep\*       #poetry #add
        {Chara}: Shut it.
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
    -   3: { not MissingBarista:
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
	-   "As he read, I fell in love the way you fall asleep: slowly, and then all at once."  // John Green, The Fault in Our Stars
	    { MissingBarista: I'm sorry you'll have to lose that. | Hmm. }
	-   "To be, or not to be"                                   #poetry // Hamlet, Shakespeare
	    {Chara}: That is the question:                          #poetry
	    {Chara}: Whether 'tis nobler in the mind to suffer      #poetry
	    {Chara}: The slings and arrows of outrageous fortune,   #poetry #add
	    {Chara}: Or to take arms against a sea of troubles      #poetry #add
	    {Chara}: And by opposing end them.                      #poetry #add
}
-> END

= Bed
{ DayNumber:
    -   1: 
        A functional object at a functional size.
        Bigger is not always better.
        Where would I put my chair?     #add
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

= Leave
{ DayNumber:
    -   1: 
        {Morning:
            Unto the breach.             #goto:Bus
        -   else:
            \*Vrrrrr, vrrrrr\*      #poetry
            \*Vrrrrr, vrrrrr\*      #poetry #add
            A phone call...
            {Chara}: Hello.
            {Colleague}: Hey man, I was looking for you at the end of work, didn't manage to find you.
            {Chara}: Sure.  What is this about?
            {Colleague}: Well, y'see, apparently my work on the account wasn't 
            {Colleague}: um...      #add
            {Colleague}: correct-   #add
            {Colleague}: And it all needs to be redone so it has to be started from scratch and the deadline is Friday and its going to be so much work and also the boss said I can't be trusted so it's your responsibility now.
            {Chara}: ...
            {Colleague}: ...
            {Chara}: You are aware I am the best in the department and already have a full schedule of work.
            {Colleague}: Yeah, yeah, I know but... Boss man's orders...
            {Colleague}: And all...     #add
            {Colleague}: ...that.       #add
            {Chara}: Fine. Just make sure you get me everything I need by the time I sit down after the morning meeting.
            {Chara}: Preferably before the meeting.
            {Chara}: If you can stretch to that.    #add
            {Colleague}: Haha, yeah sure thing.  No worries.
            \*Click\*   #poetry
            Well, that is going to be inconvenient.
            As long as I can give full attention to my work over the coming days I have no reason to worry though.
            I'll get it all done, and I'll do it all myself.
            It's pretty clear no one else is capable of helping me with anything. #add
            I could do everything much better on my own.  #nextDay      // Ooh!! Is that a doom flag? :O It just might be!!
            ~ Morning = true
        }
    -   2: Exit, pursued by time.       #goto:Bus
    -   3: I can do this.               #goto:Bus
    -   4: I'll make it through.        #goto:Bus
    -   5: Just a little more..         #goto:Bus
}
-> END

=== Bus ===
{ DayNumber:
    -   1: 
        { Morning:
            The ever-dependable bus.
            An excellent way to get to work on time.
            Taking the car has a much higher chance of getting stuck in traffic, as they cannot use the bus lanes.  Therefore resulting in a late arrival.
            That is to say nothing of how late walking would make me.
            This journey is at least an hour on foot.   #add
            Indeed, the bus suits me just fine.         #goto:Work
        -   else:
            A successful day, all things told.
            If {Colleague} is hitting their deadlines I've got nothing to worry about.  #goto:Home
        }
    -   2:
    -   3:
    -   4:
    -   5:
}
-> END

=== Work ===
{ DayNumber:
    -   1:
    { Morning:
            In the office at last.
            Quick stop in the cubicle to deposit my things, then it's off to the morning meeting.
            [...]
            As expected, everyone is looking most dreary today.
            Except...
            It's unusual to see {Colleague} looking that chipper - especially on a Monday morning.
            I guess he's finally going to be done with that big account of his.
            The completion of quality work: truly a marvelous feeling.
            Regardless, I'm sure he'll stop by to waste my time, now that his is suddenly so free.
            [...]
            Upon this strike, this final press,     #poetry
            To lunch I go; I must confess.          #poetry #add #goto:CoffeeShop
    -   else:
            "I work out."
            Again?          #add
            Really?!        #add
            It's barely even true!
            What?  Maybe once every second weekend after a blue moon.  Is that a good enough baseline?
            How embarassing.  I wish no one would ever see me a-
            {Colleague}: Hey there! Is that another Gardenflower coffee I see in your hand?
            {Colleague}: You know that place is like- 15 minutes away right?  We have a coffee shop on the ground floor.
            {Chara}: What are you talking about it's just a pen?
            {Colleague}: Mmhm.
            {Colleague}: And what about the other hand? #add
            {Chara}: Oh!
            {Chara}: This hand!             #add
            {Chara}: You meant THIS hand.   #add
            {Chara}: Yes that would be a, um, what did you call it? "Wallflower"... coffee...?
            {Chara}: Yes.       #add
            {Chara}: Quite.     #add
            {Colleague}: Yes... Quite...
            He bought it!
            {Colleague}: So, big news!  I've finished that big account I was working on.  Can you believe it's finally over after almost a month!
            {Chara}: Yes, I spotted you being uncharacteristicly happy before 5pm.  I knew something was up.
            {Chara}: The boss was impressed?
            {Colleague}: Oh not yet.  It's only just finished!
            {Colleague}: Jeez!  I can take a little time to breathe before bringing it to the boss.
            {Chara}: Of course you do.  But does it to be my time you take?
            {Chara}: It's not my lunch break anymore you know.  #add
            {Colleague}: Alright, fine.  
            {Colleague}: Enjoy your "Wallflower" coffee.        #goto:Bus
    }
    -   2:
    -   3:
    -   4:
    -   5:
}
-> END

=== CoffeeShop ===

-> Leave

{ DayNumber:
    -   1: 
    -   2:
    -   3: (AbsentBarista) Where is he?
    
}

= Leave
    ~ Morning = false

-> END

=== FastFood ===
-> END


// { DayNumber:
//     -   1: 
//     -   2:
//     -   3:
//     -   4:
//     -   5:
// }
