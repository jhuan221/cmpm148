LIST progression = intro, hike, gabe, bob, choomchoom, perry, ending
VAR GabeAlive = true
VAR BobAlive = true
VAR ChoomChoomAlive = true
VAR PerryAlive = true

LIST favorState = Worst, Bad, Neutral, Good, Best
VAR GabeState = Neutral
VAR BobState = Neutral
VAR ChoomChoomState = Neutral
VAR PerryState = Neutral
VAR currentProgression = intro
VAR favorability = 0

Camp Cronos
->cronos

=== cronos ===
Camp description
Jimmy is a suspect 
Jimmy can travel in time
-> top_loop

=== top_loop ===

<- storylets(->top_loop)

-> DONE

=== storylets(->ret) ===
<- intro_description(ret)
<- hike_description(ret)
<- gabe_description(ret)
<- bob_description(ret)
<- perry_description(ret)
<- choomchoom_description(ret)
<- ending_description(ret)

-> DONE

=== intro_description(->ret)
{currentProgression == intro:
    * [Travel back in time]
      -> intro_body ->
    -> ret
}
-> DONE

=== intro_body ===
let guys choose the team they want to be on

having dinner with the campers

* [let kids choose dinner]
    favorability increased
    ~ GabeState++
    ~ BobState++
    ~ ChoomChoomState++
    ~ PerryState++
* [just give them food]
    favorability decreased
    ~ GabeState--
    ~ BobState--
    ~ ChoomChoomState--
    ~ PerryState--
-
~ currentProgression = hike
->->

=== hike_description(->ret)
{currentProgression == hike:
    Are you ready to go on the hike?
    * [Begin the hike]
        -> hike_body ->
    -> ret
}
->DONE

=== hike_body ===
You hear an ominous noise, how do you comfort the campers?

* [Reassure everything is fine]
    Tell children if they ever get lost follow the northstar to the lake
    Bring kids to the lake
    Bob has disappeared!
    ~ GabeState++
    ~ BobState++
    ~ ChoomChoomState++
    ~ PerryState++
    ~ currentProgression = bob
* [Humor the kids pretending its big foot]
    Children now want to find bigfoot
    ~ GabeState--
    ~ BobState--
    ~ ChoomChoomState--
    ~ PerryState--
    ~currentProgression = gabe
    
-
->->

=== gabe_description(->ret)
{currentProgression == gabe:
    * [Continue on the hike]
        -> gabe_body ->
    -> ret
}
->DONE

=== gabe_body ===
Gabe has disappeared!

* [Tell kids to stay put]
    Jimmy follows footsteps on his own
    
    Gabe is found!
    ~ favorability++
    ~ currentProgression = bob
* [Follow bigfoot footprints with kids]
    You reach a dead end, the voice inside Jimmy's head tells him to take the kids to the lake.
    ~ GabeAlive = false
    ~ favorability--
    ~currentProgression = bob
    
-
->->

=== bob_description(->ret)
{currentProgression == bob:
    * [Ask campers about Bob]
      -> bob_body ->
    -> ret
}
-> DONE

=== bob_body ===
You should ask children about Bob's whereabouts
+ [Go to Perry]
    You go to Perry to ask him about what happened to Bob
    ~ currentProgression = perry
    
* [Go to ChoomChoom]
    ~currentProgression = choomchoom
    
-
->->


=== choomchoom_description(->ret) ===
{ currentProgression == choomchoom:
    ChoomChoom is too scared to get any information from him.
    + [Ask anyway]
        -> choomchoom_body ->
    ->ret
}
-> DONE

=== choomchoom_body ===
ChoomChoom is running away

+ [Follow him]
    You found ChoomChoom near the lake
    ** [Eat him]
        You ate ChoomChoom and return to the campers
        You decided to ask Perry about Bob
        ~currentProgression = perry
        ~ChoomChoomAlive = false
    ** [Calm ChoomChoom down and reunite with other children]
        You brought ChoomChoom back to the rest of children.
        You decided to ask Perry about Bob
        ~currentProgression = perry

+ [Let him go]
    Later you learned that ChoomChoom successfully reached the camp by himself.
    You decide to keep searching for Bob
    ~ChoomChoomState--
    ~currentProgression = perry
-
->->



=== perry_description(->ret)
{currentProgression == perry:
        You approach Perry
        -> perry_body ->
    -> ret
}
->DONE

=== perry_body ===
The voice inside Jimmy’s head tells him to bribe Perry

* [Bribe Perry]
    Perry is displeased with your attempted bribery and tells the other kids you lost Bob
    Jimmy chases Perry
    ~ BobAlive = false
    * * [Eat Perry]
        You ate Perry and went back to the camp.
        ~ PerryAlive = false
        ~currentProgression = ending
    * * [Calm Down]
        You calmed down and went back to the camp.
        ~ PerryState--
        ~currentProgression = ending
    
* [Politely ask Perry to lead you to Bob]
    Perry goes with Jimmy and they both find Bob
    ~ PerryState++
    ~ currentProgression = ending
-
->->

=== ending_description(->ret)
{currentProgression == ending:
        The police interrogate the remaining group
        -> ending_body ->
    -> ret
}
->DONE

=== ending_body ===
{GabeAlive == true:
    {GabeState > Neutral:
        Gabe says something good about Jimmy
    }
    {GabeState == Neutral:
        Gabe says something neutral about Jimmy
    }
    {GabeState < Neutral:
        Gabe says something bad about Jimmy
    }
}
{BobAlive == true:
    {BobState > Neutral:
        Bob says something good about Jimmy
    }
    {BobState == Neutral:
        Bob says something neutral about Jimmy
    }
    {BobState < Neutral:
        Bob says something bad about Jimmy
    }
}
{ChoomChoomAlive == true:
    {ChoomChoomState > Neutral:
        GabChoomChoome says something good about Jimmy
    }
    {ChoomChoomState == Neutral:
        ChoomChoom says something neutral about Jimmy
    }
    {ChoomChoomState < Neutral:
        ChoomChoom says something bad about Jimmy
    }
}
{PerryAlive == true:
    {PerryState > Neutral:
        Perry says something good about Jimmy
    }
    {PerryState == Neutral:
        Perry says something neutral about Jimmy
    }
    {PerryState < Neutral:
        Perry says something bad about Jimmy
    }
}
->DONE



