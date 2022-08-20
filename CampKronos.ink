LIST progression = intro, dinner, hike, gabe, bob, choomchoom, perry, ending
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

LIST introProgression = beginning, middle, end
VAR introState = beginning

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
<- intro_description_middle(ret)
<- intro_description_end(ret)
<- hike_description(ret)
<- gabe_description(ret)
<- bob_description(ret)
<- perry_description(ret)
<- choomchoom_description(ret)
<- ending_description(ret)

-> DONE

=== intro_description(->ret)
{currentProgression == intro && introState == beginning:
    The impending rumbling that will swallow them whole. They were crumbled into broken bits, with each piece crushed apart abruptly without warning. It was violent. Nothing was left untouched when disaster strikes.
     
    * [Wake up Jimmy]
    
    Shreds of Earth torn with each seismic wave. The mountains serrated, like fangs, the ground split.
 
    * *[Wake up Jimmy]
    
    Their footsteps are pounding. Running to shelter as everything is devoured by it.
     
    * * * [Wake up, Jimmy]
    
    Jimmy’s eyes shot open; his body drenched in cold sweat. Sirens are ringing as people from a distance are shouting.
    
    “The campgrounds! … Where are the campers?”
    
    The crackling of their walkie-talkies permeates the air for a few seconds before the group can receive a stable signal.
    
    “We just got word that there were a couple campers up north near the lake before the earthquake hit,” said the voice over the walkie-talkie. “Five children, ages eight to ten, are missing. Two boys and three girls. Last seen with—”
     
    The park rangers cover their ears as the voice warped into a series of high pitch screeches. One of them tries adjusting the knob on the little device but to no avail.
     
    The screeching comes to a halt.
 
    * * * * [The campers?]
    
    A sharp pain begins at the temple of Jimmy’s head. Trying to subdue the pain, he places a hand on his forehead, slowly breathing in. Breathing out. Jimmy closes his eyes.
     
    He opens his eyes and sees a silhouette approaching. Jimmy shuts his eyes again to dilute his senses, trying to process what’s happening.

    * * * * * [Alice.]
    -> intro_body ->
    -> ret
}
-> DONE

=== intro_body ===
Alice runs towards Jimmy with a mix of emotions. A wave of relief mixed with fear and anxiety. Kneeling, she looks at his current state.
 
“Jimmy, I’m so glad that I found you. Are you alright? I thought we had lost you when you went to chase ______,”. Alice notices a trickle of blood go down Jimmy’s forehead. “Shit, is that blood? Let’s get you to a medic. Can you stand up?”
 
* [Let Alice help him.]
Pulling off the hand from his head, Jimmy could feel a sticky residue left on his forehead. He turned his palm to observe, blood had been smeared over his hands. The scent of sweat and iron was finally hitting the senses, the feeling of nausea taking over. Jimmy could feel bile rise in the back of his throat.
 
Alice could see Jimmy’s unease increase. Quickly, she gets up and helps him stand. Putting his arm around her shoulder, they awkwardly maneuver out the encircling of fallen trees and fault lines.
 
Scanning the freshly stabbed crevices that have been carved into the ground, Jimmy’s focus begins to succumb.
 
* * [Stay awake Jimmy.]

“Hey!”, Alice said. “Can we please get a medic or someone to get him checked out? There’s blood on his head. He might have hit it.”
 
A ranger splits from the group. “Not sure if we can get any medical help right now. We can’t get any signal to communicate with them,” gesturing towards their walkie talkie and sighed in frustration. “What I can do is get you something to bandage and clean yourself up”. She hands Alice a first aid kit.
 
“We found some of your party by the lake, so some of us will be heading up. Anything else you need to ask them.” The ranger points towards the rest of her colleagues. “Make sure to stay away from the tre—”. The blaring of sirens seems to have amplified.
 
* * * [Look Jimmy.]

He slowly turns his head to the sky, flocks of birds flying in sporadic patterns. They seemed panicked.
 
The rumble begins again. The feeling of control was lost suddenly. Their bodies no longer obeyed them. Their balance was manipulated by the aftershock beneath them, plates sliding at jagged intervals. The birds who have taken refuge in the sky, swirl above as they watch it collapse.  

* * * * [Let us in.]
~ introState = middle
->->

=== intro_description_middle(->ret)
{currentProgression == intro && introState == middle:
    Time: August 19th 9:30pm
    
    “Can you tell us about how Jimmy treated the children?” the park ranger asked Alice. Alice turned to her left and right in search of Jimmy. 
    
    “I saw him threaten ChoomChoom near the lake about an hour before the earthquake. ChoomChoom seemed to have seen something Jimmy didn’t want him to see.”
    
    “Did anything else happen after that?” 
    
    “They both returned to the lake afterwards, but about 30 minutes later, ChoomChoom went back to the campsite. I didn’t see ChoomChoom again before the earthquake hit and I’m worried about him. I think I saw ChoomChoom speak to Perry before heading back. Have you spoken with him yet?”
    
    “I have not yet. I will speak with him next. Thank you.”
    
    The park ranger scribbled down the remaining notes in his journal and thanked Alice again for her help. With new revelations, the park ranger headed towards Perry and Jimmy to ask questions.
    
    * [Go to Perry and Jimmy] 
    
    The park ranger asked to speak with Perry separately and told Jimmy to wait by the tree. Jimmy leaned against a nearby tree and waited while Perry and the park ranger spoke. 

    “I just spoke to Alice and she said she saw Jimmy threaten ChoomChoom by the lake about an hour before the earthquake. She also said she saw you speaking to ChoomChoom before he returned to the campsite. Did ChoomChoom tell you anything about this?”
    
    Perry scratched his head as he tried to recall the events at the lake.
    
    “Yes, I remember talking to ChoomChoom briefly at the lake. I believe he told me he talked to Jimmy and told me that Jimmy did something strange. He also told me to be careful around Jimmy, but this was so weird to me.”
    
    “Why was that weird?”
    
    “Well, ChoomChoom has always loved Jimmy. All of us loved him. He really cared about him and treated us well. It was out of the blue for ChoomChoom to say something like that when Jimmy has been nothing but wonderful to us.”
    
    The park ranger briefly turned towards Jimmy as he jotted down what Perry said.
    
    “I see. Thank you for your help. That’s all the questions I had, you’re free to go back to Jimmy now.”
    
    * * [Go to Jimmy.]
    -> intro_body_middle ->
    ->ret
}
->DONE

=== intro_body_middle === 
Perry headed back towards Jimmy.  

“Hey Perry, what did the park ranger ask you?”

“He asked me about ChoomChoom and I told him that he was acting weird. He told me to be careful around you, but I said that he was crazy.”

“Huh?”

“Yeah, I know. Not sure why he would say something like that.”

“I wonder if something happened to ChoomChoom. I also thought he was acting weird at the lake. I actually pulled him aside about an hour before the earthquake to check in on him, but he said everything was fine.”

“Yeah, me too. He seemed like he had a lot on his mind that day.”

“I’ll go ask the park ranger and see if he knows anything.”

* [Go to the park ranger]

Jimmy jogged up the slope towards the park ranger.

“Hey—“

The grounds began to tremble and shake again. The shaking worsened, almost violent.

“What—what’s happening?

The skies parted, clouds stormy. Thunder tore through. The sky seemed upset and angry. 

“Wha—t?“
~ introState = end
->->

=== intro_description_end(->ret)
{currentProgression == intro && introState == end:
    * [Darkness.]
    -> intro_body_end ->
    -> ret
}
->DONE

=== intro_body_end ===
“Jimmy! Jimmy! Wake up!”

Jimmy’s eyes shot open, confused. 

“Wha—? Wher—where am I?”

“We’re about to have dinner at the campsite! Did you forget?!”

Jimmy rubbed his eyes and blinked.

“Wasn’t there just an earthquake? Wait—what time is it?”

“It’s 12pm August 19th Jimmy! How could you forget? You just told us this.”

“Right..right, of course. Let’s get dinner started!”

* [Dinner.]
~ currentProgression = dinner
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



