VAR DayNumber = 1		// 1 - monday, 3 - wednesday, 5 - friday
VAR Morning = true
VAR MissingColleague = false
VAR MissingBarista = false
VAR MissingWorker = false
VAR MissingDriver = false

VAR Chara = "Charlie"
VAR Colleague = "Colleague"
VAR Bar = "Barista"
VAR Worker = "Worker"
VAR Driver = "Driver"
VAR Pass = "Passenger"

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
            Another morning.  Another day picking up other's slack.
            Another Tuesday.            #add
            A day upon which fate has sprung me a trap.  But that is naught but an inconvenience.
            A bur in my side.  A thorn in the pad of my mighty foot.  The fly in my Michelin star earning soup.
            Yes.  I will not be quashed by such measly troubles.
            I will conquer this new challenge and non shall see me flinch as I do so.
            So it took {Colleague} three weeks - so what? 
            Having three days to accomplish what took them three weeks seems like more than enough time.
        -   else:
            Just because the work day wasn't the best, doesn't mean dinner has to follow suit.
            ...
            A nearly empty supply of food however.  That might influence things a bit.
            Hah, but not enough!  I can envision plenty of options with just these few ingredients!
            But, uh... Only for tonight.  There's seriously not enough for tomorrow.  I need to go shopping.
        }
    -   3: 
        {Morning:
            Another morning.  Wednesday.
            It's going to be a busy day ahead.  The rope is getting slacker, but I'll tighten it up soon enough.
            Yes.  With no more bad luck (and certain uplifting lunches) I will certainly have no issues righting the wrongs of others.
            I will commit hard to my work.
            My efforts will ensure success.     #add
            Lunch will re-energise me.          #add
            I will succeed on my own.           #add           
        -   else:
            Home has never felt so comforting.
            What a bleak day from start to finish.
            But finally fortune has seen fit to bless the worthy with their feast.
            Let's see:
            Looks alright. Smells not-terrible. #add
            Tastes...                           #add
            Vegetarian?!                        #add
            Of course the person who I'd ask for their preference would be a vegetarian.
            This is-
            Not bad actually.       #add
            It seems luck has chosen me again.  Someone may have given me vegetaian food, but fate saw fit to make it tasty.
            Glad to have you on my side Great Weaver.
        }
    -   4: 
        {Morning:
            Morning, already?
            Thursday?
            What a day.                         #poetry
            It sure will be excellent.          #poetry #add
            Things will go good.                #poetry #add
            And they'll all be... excellent.    #poetry #add
        -   else:
            It looks like this is it.
            There's nothing else for it.
            If all I have to eat is breakfast food.
            Then my only option:
            Is to eat breakfast food.    #add
            I just have to... Get the food together. 
            With the appropriate... Dishware.   #add
            {Chara}: If you don't eat this soon you'll be sleeping in it.  Get it together.
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
        As if that's going to be any good.
        But it's my only choice.
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
            Rest well valiant one, for tomorrow you must exert yourself on the battlefield to great effect!
            For honour!
            For accounting  #add
            For-            #add #nextDay      
            ~ Morning = true
        }
    -   3: 
        {Morning:
            {Chara}: I can do this.               #goto:Bus
        -   else:
            Things may be at a low point now; but just as the centre of a cable hangs the lowest, so too is Wednesday the lowest point of this week.
            It's all going to go be up from here.   #timeSkip
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
            {Driver}: Alright, that's just three-fifty then.
            {Chara}: Not a problem, here is a fifty.  And yes, I would like the change.
            {Driver}: I'm sorry but I can't do change for that much.
            {Chara}: What?  Ridiculous you must have plenty of change, you get money all day.
            {Driver}: I assure you, I can't do change for a fifty.
            {Chara}: So what? Am I just supposed to walk because I have "too much money"?
            {Driver}: That.  Or you can get very generous with your tipping.
            {Chara}: Do you-
            {Pass}: Perhaps, if I might interrupt, I could help.
            {Pass}: My work happens to leave me with a great deal of smaller notes you see.  And I'd be more than willing to give you change for your note.
            {Chara}: Oh, excellent, yes.  Right away.  How very helpful of you.
            {Chara}: Here you go {Driver}. And yes-
            {Chara}: I would still like the change.     #goto:Home
        }
    -   2:
        { Morning:
            How nice to be able to pay so easily for this bus ride.
            Luck is surely smiling on me, giving me such helpfully sized currency for my bus travels.
            Bus travels that need to hurry up!
            Some people have work to do on here!    #add #goto:Work
        -   else:
            What a pain!
            First I am laboured with additional work.  And then nobody even has the grace to give it to me.
            If this keeps up I'll have to work overtime just to get everything wrapped up.
            It'll be hard to find time for cooking but- Is that a fast food restaurant?
            We're only one stop away from where I depart, how was I unaware I resided near something like... this.
            Still, if I do end up going into heavy overtime that might just be my saving grace.   #goto:Home
        }
    -   3:
        { Morning:
            \-I have that sum from the first branch; 
            then the second branch gives me-       #add #goto:Work
        -   else:
            Eurgh, I'm so sick of how cold it is.  
            I should've checked the schedule before I left the office.  But instead I've been standing here, out in the cold, waiting for a stupid bus that still won't be here for another twenty stupid minutes.
            Buses should never have reduced schedules when it's late.  
            They should be just as frequent at all times of the day.    #add
            I could've used this time to get more work done.  But it's not worth going back in now that I'm here.
            It's a nice night though.
            The sky is clear.  The wind is calm.  The stars are pretty.     #add
            I may as well brush up on my constellations, to pass the time.    #goto:FastFood
        }
    -   4:
        { Morning:
            What a beligerant driver.  Can't grasp a destination because it wasn't followed by the word, "please".
            Perhaps just take me to work without any of this nonsense-
            Please!         #slow #add
            A waste of my time.  I should get on and think about more productive things.
            If I consider that document...
            that I found... last night...   #add
            and...      #slow #timeSkip #add
            Um, yes the document.  There was an important part in the data I already had.
            It's important that I... update...
            the column...       #slow #timeSkip #add
            Work?   #slow
            Is that... my work...?
            Oh heck that's my work! I need to depart immediately!   
            {Chara}: Driver, hold the bus- Please! #goto:Work
        -   else:
            That was very nearly the last service.
            I wouldn't want to risk walking all the way home at this hour.
            Maybe the muggers have the same schedule my colleagues seem to be on.  Perhaps I'd be fine.
            At least that ridiculous restaurant will still be open.  They still have a few hours till closing.  #goto:FastFood
        }
    -   5:
        Late.
        Late!
        Late! Late! LATE!
        How, on the one day I sleep in could it happen that the bus. 
        Is also.    #add
        LATE!!!     #add
        Actually, this makes perfect sense.
        It's fine.  I have a car.  I can drive there.
        It's perfectly possible, why shouldn't I travel under my own steam?     #timeSkip
        Had to go back inside to get my keys but I'm here now, behind the wheel so let's get this moving.
        Any second now and the operator will life the barrier to allow me to exit the car park.
        Any second...
        Any...      
        Second...       #slow
        I can't even see them in the booth, they must have fallen asleep and slumped out of view.
        Worthless.
        I'll knock on the glass.  A good fright will set them straight.
        {Chara}: Hello!
        {Chara}: I'm trying to leave out here!  #add
        I don't believe it.
        I am late.  
        There was no bus.           #add  
        The barrier is in my way.   #add
        And there is nobody in this ridiculous booth to let me drive my car!
        How am I supposed to deal with this myself?
        I don't have the key.  I'm not the operator.    #add
        I can't pick the lock.  I'm not a locksmith.    #add
        And I can't bend the barrier out of my way, because I'm not Clark bloody Kent - so I guess I'll have to walk myself to work!
        And if anyone has a problem with my car sitting in the exit, they can learn to deal with problems themselves.
        Just.
        Like.
        I do.       #goto:Ending
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
            Well isn't this a fun coincidence - two morning meetings in a row where {Colleague} is being strange.
            Yesterday they were unusually happy...
            And today they're unusually not even here!  #add
            I can only assume it's because they got so wrapped up in preparing the work they need to hand over to me that they totally forgot to the meeting today.    #timeSkip
            It appears I was wrong.  No nicely presented account. No {Colleague}.
            I can't believe they'd sleep in on a day when I was going to help them.
            At least this means I can focus on other work for now.  There's no way they could still be missing by the time I'm back from lunch.     #goto:CoffeeShop
        -   else:
            Alright, time to face the rest of the day!
            A truly infintesimal concern after a lunch as great as that.    #add
            All I have to do is find {Colleague}, finally get that account from them, and then- 
            Perhaps, first I'll set this coffee at my desk, and then I'll go find them.     #add
            Yes, that plan has far fewer headaches in it.       #timeSkip
            They're still not here.  Nobody has seen them today!  
            How can he do this to-      #add
            It's fine.  We have a centralised database.  It'll take some time but I can work out all the details from there.    #goto:Bus
        }
    -   3:
        { Morning:
            Alright, time for me to get into the real thick of this.  
            I've already worked out the theory of how to start, but first I'll just send off some emails so that the responses are already in my inbox when I need them.
            Efficiency is the core of being successful after all.
            Step, the first: correlate-     #timeSkip
            Excellent.  A genuinely flawless piece of database work.
            Now, I ought to have recieved some of those documents I requested by now, and I can start cross-checking the information.
            Go to emails... and...
            Nothing!    #add
            If this is some collective practical joke it is very ill timed.
            Who cares?  
            I'll just work around it for now.       #add #goto:CoffeeShop
        -   else:
            Ok, back to it... Back to it...
            Just... gotta...
            ...                 #add
            What happened to the coffee shop?
            Why is no one there?  Why isn't the barista-    #add
            No!  No.  It's time to focus on work.           #add
            So this account here, needs to... reference...
            This other... one...        #add
            But what if I can never see him again?
            Things were going so well, I- Need to focus!    #add #timeSkip
            The end of the working day has arrived. 
            For everyone else.      #add
            I however received emails back from a scarce few people, so now it's up to me to spend my evening sourcing the information they were supposed to deliver to me hours ago.
            It's not like I haven't found my own documents before.  And if I can find one document, I can find a dozen.
            And I can do it-
            All.        #slow
            On.         #slow #add
            My.         #slow #add
            Own.        #slow #add #goto:Bus
        }
    -   4:
        { Morning:
            That was the shortest morning meeting ever.  Only about a third of the office seemed to bother showing up.
            If people were unhelpful yesterday, today is going to be appalling. 
            But in the heros darkest hour,              #poetry
            He strives and strives with all his power.  #poetry #add
            The world will see what he can do,          #poetry #add
            When stood alone. Soon see, will you.       #poetry #add #goto:CoffeeShop
        -   else:
            Find document.
            Cross-reference.    #add
            Amend database.     #add
            Pick at sandwich.   #add
            Find document.
            Cross-reference-    #add #timeSkip
            This is ridiculous.  The deadline is far too close for this.
            No.  
            No quitting.    #add
            Keep going till you get the job done.   #timeSkip
            Yesterday, I was eating dinner by now... 
            Time to go.       #goto:Bus
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
    -   2: 
        {Bar}: Welcome back.
        {Bar}: If you're looking for the ambrosia, then I'm afraid we don't have any.
        {Bar}: I've heard regular humans suffer for eating it, and I can't risk poisoning all my customers.
        {Chara}: I but seach for the fare of mortals.
        {Chara}: But if you did come across any ambrosia...
        {Chara}: I'm sure you, at least, could share that meal with me. #add
        {Bar}: Is that so...?
        {Bar}: Well, I don't know if you noticed but there's no one here right now-
        I hadn't.
        {Bar}: -and I've been eyeing these brownies for what feels like hours now...
        {Bar}: So how about we share that meal now?
        {Bar}: After I get you what you want, that is.
        What I want...
        I should restrict my answer to lunch related options.   #add
        {Chara}: Well, I would like-        #timeSkip
        {Bar}: He really did that? And the deadline is in three days?!
        {Chara}: Oh, absolutely.  But it's no issue.  I can get it done one way or the other.
        {Chara}: Tackling challenges by myself has never been a barrier to my success before.
        {Bar}: That's a lot to take on...
        {Bar}: You must live for the weekends.  There's nothing like having a lazy day when you've earned it.
        I usually spend weekends planning other work, or itching for Monday...
        {Chara}: Haha, yeah.  I love to relax.  I know exactly what that entails.
        {Bar}: That's good!  It was starting to sound like your time was all spent working.
        {Bar}: It's nice to hear you might have some to spare.      #add
        {Bar}: Oh- But look, I have a customer.  And you are overdue a to-go latte if I've got the time right.
        {Bar}: It'll be available to pick up whenever you're ready to collect it.     #goto:Work
    -   3: 
        What a frustrating day so far.
        Everyone seems determined to make things hard for me.
        But that's fine.
        As I've always said: I achieve all my success on my own.
        Other people have never made a difference to me.        #add
        At least I'll be able to enjoy my hard earned lunch before getting back in the thick of things.
        If I'm lucky the shop will even be empty again and maybe...
        {Chara}: What...
        {Chara}: This is...
        Vending machines???
        What on this mortal coil are vending machines doing here?!
        The counter and everything have completely gone. And been replaced... By vending machines!
        The shop's empty of people alright.  But this...
        It's missing the wrong people.               #add
        Whatever. Fine. I don't have time for this.
        Let's see... Hot drinks... Cold drinks, and... Sandwiches... Right, I guess I'll get-   #timeSkip
        What a strongly average meal that was.
        Well, at least it passed the time.  Coming out here was something to do during lunch I suppose.
        But I'd gotten used to my lunches having a little more...
        Warmth...           #add #goto:Work
    -   4:
        I don't really know why I came here today.
        {Colleague} is right.  There's a coffee shop on the ground floor and it saves the walk.
        After all, there are only vending machines now.  Tombstones burying all that was good here.
        I hoped, naively perhaps, that I could find... something better... than what I found.
        A hint, or trace, of where everything went.  Hoped chance would grace me with the company I had had before.
        But instead my company is this processed bread embalmed in plastic.
        Perhaps I'll be able to pick at this as I work, it only disgusts me right now.      #goto:Work
}
-> END

=== FastFood ===
{ DayNumber:
    -   3:
        There's the high quality establishment providing my food for tonight.  It seems to be burger focussed.
        That's sufficient.  Some carbohydrates from the bread, and protein from the meat.  Enough to get by on for a little while.
        No use standing out here getting cold, time to head in.
        What is that smell?  It's food?
        I think?        #add
        But, it somehow smells like the generic concept of food, with no specific foods actually present.
        I should've worked hard enough to have time for shopping.  Tomorrow I'll avoid making the same mistake.
        {Worker}: Welcome to Lunar Burger, where the food-
        {Chara}: Yeah, I don't want to hear whatever the end to your awful catchphrase is.
        {Chara}: I just need one of whatever an average meal here looks like.
        {Worker}: We have a large selection of popular items, which-
        {Chara}: No no.  I don't need to hear the list of options, and the cute names your gunny marketing division came up with.
        {Chara}: I just need whatever contains enough calories to count as dinner.
        {Worker}: ...Certainly.  And before I put that in do you have any food allergies or intolerances I should be aware of?
        {Chara}: Yes, you got me.  
        {Chara}: I have a crippling list of food allergies and decided I'd like to live based on the luck of the draw process of getting a fast food worker to pick my meals.
        Who knew I'd be dealing with one of the great thinkers of our time.  I'm sure she's worth every penny they spend on her wages.
        {Chara}: If it would speed up this process, just give me whatever you'd eat from this menu.
        {Chara}: And... Do you have any apple juice?
        {Worker}: Yes we have bottles of apple juice.
        {Worker}: I'll add a bottle to your order.
        {Chara}: Very good.
        It was never this hard to get what I wanted at Gardenflower.
        How can she have a job while {Bar} lost his.  How much can this place really benefit anyone.    #goto:Home
    -   4:
        There it is... again.  
        It seems they like to keep the lights down late at night.  I'm glad, the place will be far less garish that way.
        Now, don't look stupid on top of everything going on.  The inner door was a push, but this one is-
        Not...
        Opening?    #add
        Ridiculous.  This place is open half way to dawn and I'm supposed to believe they locked up already?
        Perhaps your supposed to signal someone inside to protect them from marauding youths or something.
        I'd be able to get a better look if this accursed paper wasn't blocking the window- What is this for anyway?!
        "Lunar Burger will be closed due to a shortage of staff.  We apologise for the inconvenience."
        But that's-
        I have needs!   #add
        I've been working all day, my cupboards are destitute.
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
There's got to be someone inside.
The doorman?
A worker?!
Anyone!
Just-
Someone.    #add
I need to get in to finish my work!
I've put in so much effort!
I've tried so hard!         #add
I've done as much as I can! #add
I just need a little help.
Please.
I can't-
I can't succeed on my own.  #slow #nextDay
-> END

// { DayNumber:
//     -   1: 
//     -   2:
//     -   3:
//     -   4:
//     -   5:
// }
