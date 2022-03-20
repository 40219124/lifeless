VAR DayNumber = 1		// 1 - monday, 3 - wednesday, 5 - friday
VAR Morning = true
VAR MissingColleague = false
VAR MissingBarista = false
VAR MissingWorker = false
VAR MissingDriver = false

VAR Chara = "Charlie"
VAR Colleague = "Colleague"
VAR Bar = "Barista"

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
            A successful day, all things told.
            If {Colleague} is hitting their deadlines I've got nothing to worry about.
            And a good day deserves to be followed by a good meal.
            This fridge is getting a little empty, I'll have to go shopping soon.
            That's fine, I have the time. I can just go later in the week.
        }
    -   2:
        {Morning:
            [Charlie rises miffed but optimistic about his ability to sort things.]
            [Reasons that only having approximately one day for each week {Colleague} spent on it probably equates their different productivity levels well.]
        -   else:
            [Day was slower than desired due to {Colleague}'s absence.]
            [Also, this meal is the last dinner food in the house.  Further meals will require the time to shop.]
        }
    -   3: 
        {Morning:
            [Charlie hopes for a lucky break today, so that he might have time to restock his food supplies.]             
        -   else:
            [Charlie returns with fast food having been very unlucky.]
            [More than just {Colleague} were missing and it hampered progress so much he'd done half a day of overtime to make up for it.]
        }
    -   4: 
        {Morning:
            [Tiredness is starting to seep in after these few unusual days.]
        -   else:
            [Again, {Chara} returns without any fast food.]
            [Today was even harder than yesterday, putting his arrival slightly after midnight.]
            [Dinner food was used up on Tuesday. The only resort is to eat breakfast supplies instead.]
            [{Chara} is so wiped he can barely eat without sleeping.]
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
            {Chara}: Unto the breach.             #goto:Bus
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
    -   2:
        {Morning:
            {Chara}: Exit, pursued by time.       #goto:Bus
        -   else:
            [{Chara} mentally rallies around the idea that he can push himself harder tomorrow and fix everything.]  #nextDay      
            ~ Morning = true
        }
    -   3: 
        {Morning:
            {Chara}: I can do this.               #goto:Bus
        -   else:
            Will I ever see you again?  #nextDay      
            ~ Morning = true
        }
    -   4: 
        {Morning:
            {Chara}: I'll make it through.        #goto:Bus
        -   else:
            {Chara}: Finally.  
            {Chara}: ...         #nextDay      
            ~ Morning = true
        }
    -   5:  It's... Already starting time?
            I overslept this much and I only just realised.
            {Chara}: Just a little more-
            {Chara}: Just a little more and you'll be through this.     #add #goto:Bus
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
            [Charlie finds himself unable to get change for a large bank note from the bus driver.]
            [An unknown passenger saves him from the dilemma of massively over paying, or walking, by exchanging him several less significant notes.]        #goto:Home
        }
    -   2:
        { Morning:
            [Eager to get started on things, Charlie impatiently rides the bus to work.]       #goto:Work
        -   else:
            [Disappointed in the twists his day took Charlie considers the fast food place as they drive past.]
            [Thinking he might need to buy meals if his days continue their current productivity trajectory.]    #goto:Home
        }
    -   3:
        { Morning:
            [Charlie barely notices the journey, as he's already solving work problems in his head.]       #goto:Work
        -   else:
            [{Chara} travels home well past dinner time, yet departs the bus at an earlier stop.]
            [{Chara}'s stop is next to the fast food place where he will buy dinner before carrying it home.]     #goto:FastFood
        }
    -   4:
        { Morning:
            [{Chara} boards the bus tired.  He is crabby with the people he talks to.]
            [When {Chara} gets to work he is unsure if he slept on the bus, or just sat there unthinking the whole time.]       #goto:Work
        -   else:
            [An even later return than Wednesday.  It's practically midnight.]
            [{Chara} makes the same early exit at the fast food restaurant.] #goto:FastFood
        }
    -   5:
        [There is no bus.]
        [Charlie tries to take his car instead, but finds no one operating the barrier in his car park.]
        [Charlie walks to work, hoping to find another bus service, or taxi to hail, on his way.]
        [He finds neither and walks the whole 70 minutes to the office as it begins to rain.]       #goto:Ending
}
-> END

=== Work ===
{ DayNumber:
    -   1:
        { Morning:
            In the office at last.
            Quick stop in the cubicle to deposit my things, then it's off to the morning meeting.   #timeSkip
            As expected, everyone is looking most dreary today.
            Except...
            It's unusual to see {Colleague} looking that chipper - especially on a Monday morning.
            I guess he's finally going to be done with that big account of his.
            The completion of quality work: truly a marvelous feeling.
            Regardless, I'm sure he'll stop by to waste my time, now that his is suddenly so free.  #timeSkip
            Upon this strike, this final press,     #poetry
            To lunch I go; I must confess.          #poetry #add #goto:CoffeeShop
        -   else:
            "I work out."
            How did you manage to say that to him again.
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
            {Chara}: Of course you do.  But does it have to be my time you take?
            {Chara}: It's not my lunch break anymore you know.  #add
            {Colleague}: Alright, fine.  
            {Colleague}: Enjoy your "Wallflower" coffee.        #goto:Bus
    }
    -   2:
        { Morning:
            [{Colleague} is not in the morning meeting.  Charlie gets on with other work expecting {Colleague} later in the day.]                        #goto:CoffeeShop
        -   else:
            [{Colleague} still isn't around and by mid afternoon {Chara} has to slowly find all of {Colleague}'s failed account info himself.]       #goto:Bus
        }
    -   3:
        { Morning:
            [{Chara} works as best he can but finds that certain people are slow to respond to his emails]  #goto:CoffeeShop
        -   else:
            [It's clear {Chara} will not be getting those particular email requests answered.]       
            [{Chara} puts in additional hours (roughly 3 more) to catch up time lost to finding his own answers.]        #goto:Bus
        }
    -   4:
        { Morning:
            [Morning meeting must've been staffed with roughly one third the ususal staff.]
            [{Chara} already knows this is not good news for making up lost work today, but resolves to make the best of it.]       #goto:CoffeeShop
        -   else:
            [After a very low productivity day due to the office skeleton crew {Chara} departs exhausted.]       #goto:Bus
        }   
}
-> END

=== CoffeeShop ===

~ Morning = false
{ DayNumber:
    -   1: 
        Gardenflower coffee shop!
        A lovely experience in an otherwise dull part of the day.   #add
        Much better than quietly sitting in the office, legally obligated not to continue working.
        Their selection of handmade sandwhiches makes the perfect union with that barista's finely brewed coffee.
        The perfect.
        Union.                  #add
        With that bari-         #add
        {Bar}: Good afternoon.  What can I get you?
        {Chara}: Ah!
        {Bar}: You've reached the front of the line...
        {Bar}: Occasionally people like to use such an opportunity to tell me their order.  #add
        {Chara}: HAHA! Right!
        {Chara}: I-             #add
        {Chara}: Ummmmmmm~      #add
        {Bar}: Wow, you sure look like you're with the angels today.
        {Chara}: You-
        {Chara}: You think I look like an angel?    #add
        {Chara}: Well, I mean- I er- work out... And I- um- try to eat healthy-
        {Bar}: Oh, um, I- It's not that you-
        {Bar}: You looked like your head was in the clouds, is all I intended.
        {Bar}: Perhaps you'd like your usual order? I can sort your latte just now and deliver your food when it's finished heating.
        {Chara}: Yes please that sounds good thank you very much.   #timeSkip
        {Bar}: Here's your food... Angel.
        {Chara}: Oh, thank you.
        "Angel"?! OK!
        {Chara}: Cou-
        {Bar}: Wou-
        I should hear what he has to say...
        {Bar}: ...would you like me to make you a to-go latte when you leave today too?
        {Chara}: Yes please, I would!
        {Chara}: You know me so well.   #add
        {Bar}: Just... doing my job!
        Was he... blushing?             #goto:Work
    -   2: [Another day of effective communicating with the barista.  Some potential flirts may have happened from both parties.]                  #goto:Work
    -   3: Where is he?
        [The barista is not in the shop.  His job having been replaced by a succession of vending machines.]    #goto:Work
    -   4:
        [Charlie returns to the Gardenflower, not knowing how else to spend his lunch. He does not enjoy his electronically vended meal.]   #goto:Work
}
-> END

=== FastFood ===
{ DayNumber:
    -   3:
        [Charlie is terse and unkind to the fast food worker.]
        [Charlie thinks about how insignificant their job is, and the idea that what little money they earn is probably too much.]
        [Perhaps has a sad thought about the higher quality workers (the barista) that he can't buy from anymore.]  #goto:Home
    -   4:
        [Charlie arrives after an exhausting day just needing anything for dinner that night.]
        [The fast food restaurant is closed.  A note inside the door citing a lack of staff.]
        {Chara}: Please. You can't not be here!
        {Chara}: I need you!
        {Chara}: What am I supposed to eat!     #goto:Home
}
-> END

=== Ending ===
Finally...
I made it.  #add
There's still over an hour before midday. If I skip lunch I can-
What?
What's going on?
The building it's...
LOCKED.         #add
Oh no no no no no.
No no no no no no no no no no no.   #add
I need to get in to finish my work!
There's got to be someone inside?
The doorman?
A worker?!
Anyone!
Just-
Someone.    #add
Please.
I can't succeed on my own.  #slow #nextDay
-> END

// { DayNumber:
//     -   1: 
//     -   2:
//     -   3:
//     -   4:
//     -   5:
// }
