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

LIST storyletProgression = beginning, middle, end
LIST groupNames = Otters, Foxes, Slugs
VAR introState = beginning
VAR dinnerState = beginning
VAR hikeState = beginning
VAR gabeState = beginning
VAR groupName = Otters

LIST inventory = empty, mascot, stick, flashlight
VAR item = empty

LIST childrenState = alive, dead
VAR gabeAlive = alive
VAR bobAlive = alive
VAR choomchoomAlive = alive
VAR perryAlive = alive

VAR brokenArm = false

Camp Kronos
->cronos

=== cronos ===
-> top_loop

=== top_loop ===

<- storylets(->top_loop)

-> DONE

=== storylets(->ret) ===
<- intro_description(ret)
<- intro_description_middle(ret)
<- intro_description_end(ret)
<- dinner_description(ret)
<- dinner_description_middle(ret)
<- dinner_description_end(ret)
<- hike_description(ret)
<- hike_description_middle(ret)
<- hike_description_end(ret)
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
    -> intro_body ->
    -> ret
}
-> DONE

=== intro_body ===
Shreds of Earth torn with each seismic wave. The mountains serrated, like fangs, the ground split.
 
*[Wake up Jimmy]
    
Their footsteps are pounding. Running to shelter as everything is devoured by it.
     
- * [Wake up, Jimmy]
    
Jimmy’s eyes shot open; his body drenched in cold sweat. Sirens are ringing as people from a distance are shouting.

“The campgrounds! … Where are the campers?”

The crackling of their walkie-talkies permeates the air for a few seconds before the group can receive a stable signal.

“We just got word that there were a couple campers up north near the lake before the earthquake hit,” said the voice over the walkie-talkie. “Five children, ages eight to ten, are missing. Two boys and three girls. Last seen with—”
 
The park rangers cover their ears as the voice warped into a series of high pitch screeches. One of them tries adjusting the knob on the little device but to no avail.
 
The screeching comes to a halt.
 
- * [The campers?]
    
A sharp pain begins at the temple of Jimmy’s head. Trying to subdue the pain, he places a hand on his forehead, slowly breathing in. Breathing out. Jimmy closes his eyes.
 
He opens his eyes and sees a silhouette approaching. Jimmy shuts his eyes again to dilute his senses, trying to process what’s happening.

- * [Alice.]
    
Alice runs towards Jimmy with a mix of emotions. A wave of relief mixed with fear and anxiety. Kneeling, she looks at his current state.
 
“Jimmy, I’m so glad that I found you. Are you alright? I thought we had lost you when you went to chase ______,”. Alice notices a trickle of blood go down Jimmy’s forehead. “Shit, is that blood? Let’s get you to a medic. Can you stand up?”
 
- * [Let Alice help him.]

Pulling off the hand from his head, Jimmy could feel a sticky residue left on his forehead. He turned his palm to observe, blood had been smeared over his hands. The scent of sweat and iron was finally hitting the senses, the feeling of nausea taking over. Jimmy could feel bile rise in the back of his throat.
 
Alice could see Jimmy’s unease increase. Quickly, she gets up and helps him stand. Putting his arm around her shoulder, they awkwardly maneuver out the encircling of fallen trees and fault lines.
 
Scanning the freshly stabbed crevices that have been carved into the ground, Jimmy’s focus begins to succumb.
 
- * [Stay awake Jimmy.]

“Hey!”, Alice said. “Can we please get a medic or someone to get him checked out? There’s blood on his head. He might have hit it.”
 
A ranger splits from the group. “Not sure if we can get any medical help right now. We can’t get any signal to communicate with them,” gesturing towards their walkie talkie and sighed in frustration. “What I can do is get you something to bandage and clean yourself up”. She hands Alice a first aid kit.
 
“We found some of your party by the lake, so some of us will be heading up. Anything else you need to ask them.” The ranger points towards the rest of her colleagues. “Make sure to stay away from the tre—”. The blaring of sirens seems to have amplified.
 
- * [Look Jimmy.]

He slowly turns his head to the sky, flocks of birds flying in sporadic patterns. They seemed panicked.
 
The rumble begins again. The feeling of control was lost suddenly. Their bodies no longer obeyed them. Their balance was manipulated by the aftershock beneath them, plates sliding at jagged intervals. The birds who have taken refuge in the sky, swirl above as they watch it collapse.  

- * [Let us in.]
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
    
    * [Write it down.]
    -> intro_body_middle ->
    ->ret
}
->DONE

=== intro_body_middle === 
The park ranger scribbled down the remaining notes in his journal and thanked Alice again for her help. With new revelations, the park ranger headed towards Perry and Jimmy to ask questions.
    
* [Time to meet them.]  

The park ranger wanted to speak with Perry separately, and told Jimmy to wait by the tree. Jimmy leaned against a nearby tree, watching with interest, while Perry and the park ranger spoke. 

- * [Watch.]

The ranger inquires first: “I just spoke to Alice and she said she saw Jimmy say something to ChoomChoom by the lake about an hour before the earthquake.” Perry fidgets with his hands. 

“Did ChoomChoom tell you anything about this? I heard you talked to ChoomChoom.”

Perry stops fidgeting and  scratches his head as he tries to recall the events at the lake.

“Yeah, I was talking to ChoomChoom at the lake. He said Jimmy said something weird. He also told me to be careful around Jimmy, but this was so weird to me.”

- * [What is strange about Jimmy?]

“Why was that weird?”

“Jimmy’s a cool guy. ChoomChoom liked Jimmy because he would always tell stories about different creatures that roamed the forest. ChoomChoom is always asking him questions to learn more about them. He really cared about him and treated us well. ChoomChoom… ChoomChoom looked different when he said that Jimmy was being strange. I… I think he was scared… I’m not sure. A lot of stuff was happening with Gabe disappearing and the stuff happening at the lake. Everyone and everything seemed off.”

The park ranger briefly turned towards Jimmy as he jotted down what Perry said.

“I see. Thank you for your help. That’s all the questions I had, you’re free to go back to Jimmy now.”

- * [Go, Jimmy.]

“Yeah, me too. He seemed like he had a lot on his mind that day.” 

Perry fidgets.

“I’ll go ask the park ranger and see if he knows anything.”

- * [Jimmy, Go.]

Jimmy jogged up the slope towards the park ranger.

“Hey—”

The park ranger seemed occupied as they received a call from her walkie talkie. A distrurbed expression crossed her face for a split second. She looks at Jimmy and approaches him quickly.

“Jimmy. Could you come with me? I need your help.”


~ introState = end
->->

=== intro_description_end(->ret)
{currentProgression == intro && introState == end:
    * [What’s going on Jimmy?]
    -> intro_body_end ->
    -> ret
}
->DONE

=== intro_body_end ===
“Sure,” responded Jimmy. Jimmy sees movement in the corner of his eye, Perry was getting taken away by two rangers. 

“Hey what’s going on? Is everything—”. 
Jimmy turns around to face the ranger inquiring about him and he is hit by Alice.
“You! I can’t believe it! You did that to the kids! How could you?!?! They’re kids Jimmy! You took advantage of them you frea—”

The ranger pulls her back.

* [What happened?]

The grounds began to tremble and shake again.  An aftershock. The shaking worsened, almost violent.

The skies parted, clouds stormy. Thunder tore through. The sky seemed upset and angry. 

The group split between the ranger and Jimmy. Thrown off balance Jimmy fell in and vision went black.

- * [Well this is it. Roll the credits.]

“Jimmy! Jimmy! Wake up!”

Jimmy’s eyes shot open, confused. 

“Wha—? Wher—where am I?”

“We’re about to have dinner at the campsite! Did you forget?!”

Jimmy rubbed his eyes and blinked.

Jimmy’s confusion grows, what had just happened.

- * [Hm, looks like it isn't the end of the road for us.]
Jimmy’s ear perks and he looks around. Did he just imagine a voice?

Jimmy asks the campers, “Um, wasn’t there just an earthquake?”.

- * [Looks like we rewinded back to the beginning of our dilemma.] 

Jimmy flinches slightly. He did not imagine it.

“Earthquake? What earthquake?” said Alice as she injects into the conversation.

“According to the position of the sun, It’s about 7:30 pm,” said Perry, grinning eagerly.

“Right..right, of course. Let’s get dinner started!”

- * [Dinner.]

~ currentProgression = dinner
->->

=== dinner_description(->ret)
{currentProgression == dinner && dinnerState == beginning:
    The warmth of the sun was slowly fading as the sun began to set behind the arches of trees in the horizon. It had been a long day of hiking with the fellow campers: trekking the long paths of the forest. They welcomed the darkness, a relief from the blazing heat.
    Jimmy takes a look around. His party of adventurers were a bit ravenous from the day's activities. 
    
    Jimmy looked concerned, like he was in deep conversation. 
    
    * [Repeat after me if you don’t want to look out of place.]

    ->dinner_body->
    ->ret
}
-> DONE

=== dinner_body ===
Jimmy pauses. Hesitantly, he speaks.

Jimmy crouches down, turning his head: “My little
 
* [Otters]
~ groupName = Otters
* [Foxes]
~ groupName = Foxes
* [Slugs]
~ groupName = Slugs

- <> {groupName}! Are you ready for the hunt? To the dining hall!”  The children cheered, waddling in a single filed line, following Jimmy the mother goose. The children chatter as they cross the bridge and turn right into the entrance of the wooden doors leading to the dining hall.

~ dinnerState = middle
->->

=== dinner_description_middle(->ret)
{currentProgression == dinner && dinnerState == middle:
    * [Here begins our journey.]
    ->dinner_body_middle->
    -> ret
}
->DONE

=== dinner_body_middle ===
Once Jimmy crossed through the large mahogany doors, he felt a strange shiver. As if someone was watching him. Peering into his head. He turns around and sees the campers, making conversation with each other to pass the time waiting in line to get their chicken nuggets and French fries. Nothing seemed out of place. 

* [Not yet.]
 
He glances arounds the spacious dining area. Tables line up in rows, filled with hungry children and counselors eating, yelling, chewing lively. Large windows line the three walls opposite facing Jimmy. The windowsills seem to be made of logs, with the bottom rail carved out like a canoe for people to sit in. Jimmy and the kids were near there serving window. The dining workers placed plates of fries and nuggets on the trays cautiously, nagging the kids to not run to their seats.

- * [Looks like you’ve traveled back in time … To before the earthquake.]

The wall above the serving area is a cork board with different crests. The crests represented three teams, represented by an animal. The yellow and navy blue with a creature with a pair of antennas and squiggly body were the Banana Slugs. Burgundy and gray with a small icon of a curled-up fluffy illustrate the Foxes. The Otter’s crest was a cuddly critter on their back floating in a sea of sky blue and black.

- * [That’s all you recall?]
 
Under each crest there are dots to illustrate achievements completed by a team. The team with the most dots wins an ice cream party at the end of the summer camp. Currently, the __(randomly pick a team that jimmy is not in charge of)___ are in the lead after gaining a dot through their expedition to the beach where the campers collect sand dollars. Jimmy planned a nightly hike as an opportunity for the campers to win a dot through a test of bravery.
 
His stomach grumbles.

~ dinnerState = end
->->

=== dinner_description_end(->ret)
{currentProgression == dinner && dinnerState == end:
    * [But first, we eat.]
    -> dinner_body_end ->
    ->ret
}
-> DONE

=== dinner_body_end === 
Jimmy is approached by a lunch lady. 
“Hey Jimmy, we just ran out of fries and nuggets. It will be a fifteen minute wait before a new batch is out of the fryer. We do have some fried tofu and salad as another option for you and your campers.”

* [Fries and nuggets.]
Jimmy approaches the campers and tells them that they will have to wait a little longer for their meal. The group looked irritated that they weren’t going to get any food anytime soon; they’ve just come back from a long day of hiking and their ravenous appetite was only increasing. The campers start to bicker, Jimmy tries to calm and collect the children. As his own patience with the kids were waning, the food was served and the children rushed to grab their delectables. Jimmy sighs in relief, grabbing his portion and sits across from another camp counselor, Alice. 
~ GabeState--
~ BobState-- 
~ ChoomChoomState--
~ PerryState--

* [Tofu and salad.]
Jimmy approaches the campers and tells them to line up near the service window. The lunch worker passes the plates of tofu and salad to campers. A look of confusion and distaste crosses ChoomChoom and Gabe’s face. They had been looking forward to having their favorite meals of chicken nuggets and fries after the long hiking day and instead were served something distasteful in their eyes. As they start to bombard Jimmy that they wanted chicken nuggies, the other two campers happily chow down on their meal, watching the debacle go on with some amusement. 
~ GabeState--
~ ChoomChoomState--

- ~currentProgression = hike
->->

=== hike_description(->ret)
{currentProgression == hike && hikeState == beginning:
    * [Getting ready for the hike.]
    -> hike_body ->
    -> ret
}
->DONE

=== hike_body ===
Jimmy and the campers finish their meal and head towards their cabin. Jimmy takes a glance at the moon: it was a full moon tonight, perfect to illuminate the hike. It would be easier to keep track of the kids with the terrain being lit by the moon tonight. 

* [ “______”.]

Opening the door to the cabin, it seemed quite a mess. Earlier this morning, there was a mad dash to scramble to roll call since Jimmy had woken up later then he would want to. The campers thought it would be a good idea to instigate a pillow fight at the crack of dawn and now that everyone was back in the chaos of the cabin, the children were feeling the urge to start the Second Pillow War.

- * [ ___________ Jimmy. If you want to prevent them from disappearing, cooperate with me.] 

- Jimmy knew that some of the campers were already a bit on the edge after the dinner fiasco. 
 

* [Tell them to stop. We’re going to be late for the hike.]
“Hey Gabe, put the pillow down. If you want to see the lake tonight, Imma need you to help me out.” said Jimmy.
“I don’t wanna help out. I want a rematch against ChoomChoom!” said Gabe as he vigorously shakes his pillow.
“Really now? And I thought you were going to help me dunk my head at the lake?” questioned Jimmy.
Bingo. That caught Gabe’s attention. “We get to dunk our heads? Like underwater?”.
“That’s right buddy. But we’re not going to if you keep stalling like this”.
Gabe comes forward, “Ok, ok. I surrender,”.
Jimmy smiles, “Alright squadron, we’ll need to gather some things before we embark on the dangerous adventure of the night hike. What shall we bring as a collective?”.

    * * [The mascot plushie.]
    The kids scramble and scurry around looking for something. Finally, one of them found what they were looking for. Perry lifts a plushie representing the team’s mascot: {groupName}. Waving the plushie, Perry runs towards Jimmy, “Can we bring this?”.
    Jimmy asks the group: “If that’s what everyone wants to bring to survive the hike, then let us embark into the night.” The kids seemed inconspicuous to what was going on so Perry got his way.
    ~ item = mascot
    
    * * [A flashlight.]
    ChoomChoom finds a flashlight underneath a pile of pillows, turning it on and aiming the light underneath his face. Bob turned around to see ChoomChoom and was startled. ChoomChoom began to chase him and they ran in circles around Jimmy. Jimmy struggled to stop the two, eventually snagging the light from ChoomChoom.
    “Alright ChoomChoom, why don’t we use this for the hike rather than here?” said Jimmy. 
    Choomchoom sighed, “Fine, whatta party pooper,”. 
    He arches his eyebrow to ChoomChoom’s response but quickly disregards it. There will be no use to instigate, not yet.
    ~ item = flashlight
    
    * * [A stick.]
    Bob whoops out a stick from under one of the bunk beds. Jimmy looks concerned and asks Bob why he was keeping the stick. 
    “It’s my lucky stick. I saw it the other night when I went to the bathroom. Doesn’t it look cool? I can use it like a sword,” smiled Bob. He began fencing an imaginary fencer as the rest of the campers looked at him in awe. They seem pretty amused by the stick, best to take it along rather than having them bicker throughout the trip to the lake. Jimmy thought so too.
    ~ item = stick
    * * [I can help you know.]
    As the kids squabble to gather something to bring to the hike, Jimmy stares up in the air for a couple seconds and glances towards Bob. 

* [Let them play around. The hike can wait till they simmer down a bit.]
ChoomChoom climbs up a bunk bed behind Jimmy, and throws a pillow at Jimmy’s head. It hits him right in his ear, making a ringing noise. Jimmy looked dazed for a second, quickly glancing up and down and pondering for a bit.
    * * [It seemed the voice had gone away.] 
    Eventually, the children were tired out from all the pillow throwing, smacking, and chasing. Jimmy could see that they were pretty worn out. Looks like the hike will be of a milder taste. Perfect for Jimmy as he was weary as well and would like to take a slower hike to gander at the trees, taking in the view of the nightlife in the forest. 

    Jimmy glanced at the window cabin, the full moon was shining bright, illuminating the tops of the redwoods. 

    ~ GabeState++
    ~ BobState++ 
    ~ ChoomChoomState++
    ~ PerryState++

- ~ hikeState = middle
->->

=== hike_description_middle(->ret)
{currentProgression == hike && hikeState == middle:
    * [Into the night hike, we begin.] 
    -> hike_body_middle ->
    ->ret
}
-> DONE

=== hike_body_middle ===
The trail was about a mile in distance and winded up towards the mountain.  Jimmy headed towards the trail with Gabe, ChoomChoom, Bob, and Perry. Gabe and ChoomChoom chatted excitedly as they began to trek up the trail. 

“Have you ever heard about BigFoot, Gabe? My brother, Jordy told me the story the last time I went hiking with him!” ChoomChoom asked.

Gabe’s face scrunched up, sniffing the crispy air. “No, I’ve never heard of BigFoot. Does he have really big feet?”. He glances at his shoes. 

“Are you stupid? That’s so obvious, why else would he be called BigFoot?” ChoomChoom laughed.

“Hey! That’s mean,” Gabe yelled back, pouting.

* [What’s the commotion?]

Jimmy veers his head back, noticing the rise in commotion. “What’s the ruckus? There’s no need to argue, you two.  Pay attention to where you are going, especially now.” 
Jimmy gestures into the darkness, “ It’s easy to trip and fall”.

“ChoomChoom called me stupid for not knowing who BigFoot was!”, Gabe whispers loudly.

Jimmy leans toward ChoomChoom, “Did you say that to Gabe?”.

“Who doesn’t know BigFoot? Has he been living under a rock?”, ChoomChoom shrugged.

- * [Tell ChoomChoom he’s right]

“Really? Now Gabe? Weren’t you paying attention to our little story times?” Jimmy teases.

Gabe crosses his arms: “I was! But but sometimes it goes over my head ya know. Those creatures aren’t real anyways.” 

Jimmy continued to walk before reaching a landing in the trail. He signaled the kids to stop and gather around. “Well, why don’t we take this as a chance to have a little storytime”.
~ ChoomChoomState++
~ GabeState--


* [Tell ChoomChoom he’s wrong]

Jimmy told Gabe, Bob, and Perry to stop and wait as he pulled Jimmy to the side. He crouched down and looked at ChoomChoom. “It’s not nice to call someone stupid. It could really hurt someone’s feelings. When someone doesn’t know something, you should kindly teach them what that thing is.”

“Fine. I guess I’ll try that next time.” ChoomChoom sighs and waddles away.

Jimmy stands up, “Thanks for understanding, ChoomChoom. Let’s head back to the rest of the group.”

~ ChoomChoomState--
~ GabeState++

    * * [Walk back to the group.]

    ChoomChoom and Jimmy headed back to the group and continued up the trail until they reached a landing, with a view of the lake up ahead. Peering down, the reflection of the moon shines on the water’s reflection.
    
    “Alright. Everyone gather around here and let’s take a break.” Jimmy announced. Taking a glance back at ChoomChoom and Gabe, he could see that there was still a slight awkward tension between the two.
    “Since we’re all resting, how about I tell you about Bigfoot?”Jimmy tilts his head towards the campers. 
    
    ChoomChoom rushes forward while the campers gather around as Jimmy begins to speak. 

- ~ hikeState = end

->->

=== hike_description_end(->ret)
{currentProgression == hike && hikeState == end:
    * [Tell Bigfoot story]
    -> hike_body_end ->
    ->ret
}
-> DONE

=== hike_body_end ===
“Once upon a time, a young woman named Ronnie lived alone in the woods. She liked the peace and quiet the forest invited. She settled near here, and built a small cabin near this lake”, Jimmy points ahead towards the lake. One day, in her cabin, she looked out the window and saw something strange.”

“Oh! I know what she saw!” ChoomChoom exclaimed.

Jimmy turned towards ChoomChoom. 

* [“Go on.”]

“She saw an animal-like being that had dark hair and walked on two feet,” ChoomChoom replied.

“A large human-like being, with dark long hair all over its body. Kinda like Chewbacca. Except, this Chewbacca had humongous feet. When Ronnie went outside to take a closer look at what this creature could be, she saw large footprints it left behind. The prints were too big to be a bear.” Jimmy finished.

Suddenly, Bob waves his hand around. “Wait! Does that mean we can find BigFoot here? We’re near the lake!”

“I want to find BigFoot too!” Perry said.

“Me too! Me too!” Gabe and ChoomChoom followed.

The children start bouncing around, getting excited from the story. Jimmy tried calming them down: “You don’t want to come across BigFoot. It’s a being that’s capable of mass destruction!” The kid's determination was yet to be deterred. They start scurrying around breaking from the path to look for footprints. 

Jimmy, seeing the chaos beginning to stir, tried to turn it into his favor: “Hey. My dudes the sooner we head to the lake, the sooner you might see BigFoot!”. 

The noises of the children rambling soon faded into the darkness as Jimmy’s sense grew weary. 

- * [Sounds like you need rest soon.] 

Out of the corner of his eyes, he saw Perry heading near a pothole. Running to pull him out of harm's way. Then, a strange sound appeared. The noise was in between a gurgle and growl, starting with a low hummer, progressively growing louder. Jimmy and Perry turn around, and watch the other kids slow down and confusion cross their faces. 
Jimmy hurries Perry back with the group but notices someone is missing. 

~ currentProgression = gabe
->->

=== gabe_description(->ret)
{currentProgression == gabe && gabeState == beginning:
    * [Where was Gabe?]
        -> gabe_body ->
    -> ret
}
->DONE

=== gabe_body ===
“Hey, have any of you seen Gabe?” questioned Jimmy. The campers shake their heads. Where could have Gabe gone? Panic started to kick in, Jimmy needs to focus. Taking a deep breath to compose himself, Jimmy takes another look at the kids to make sure no one else was missing. The campers seem to notice the slight tension emitting from Jimmy while the others still seem unaware of what was happening. 

Taking in the terrain for any signs of where Gabe could have gone, Jimmy sees there is a trail of footstop forward down the path that was going off road.

* [Tell the campers to stay. Jimmy can go on his own.]

“Hey, I want everyone to stay put here alright?” said Jimmy, gathering the rest of the campers in a spot near where the footprint trail began.   

    * * [You sure leaving the kids here would be the best Jimmy?]
    
    Jimmy pauses and looks around hesitantly.  

        * * * [Tell kids to follow Jimmy]
        
        “We’re gonna follow these footsteps alright kiddos,” Jimmy exclaims. 

        The kids' eyes lit up as they all exclaimed “Bigfoot! It’s Bigfoot!”
        
        Jimmy’s exhaustion seemed to wane slightly as he sees the kids' excitement. His panic towards Gabe eases for a moment, reassessing the situation at hand. When did Gabe disappear? Did Gabe wander off on his own to search for Bigfoot after hearing my story? Jimmy needed to think fast, as the night progressed, what else lies in store for them? 
        
            * * * * [Look for Gabe.]
        
            “Alright, everyone gather around me. I think Gabe wandered off on his own so we’re going to follow those footprints and find him before it gets dark.” Jimmy said.
            
            The kids looked at each other and exclaimed: “Yay! Bigfoot!!”
            
            Jimmy looked around him and saw the kids’ excited and bubbly faces, but stopped at ChoomChoom’s. ChoomChoom seemed deep in thought, almost concerned. Maybe he was scared of Bigfoot? Jimmy noted that down mentally and told himself that he would check in with ChoomChoom after they found Gabe.
        
                * * * * * [Follow the footprints.]
                “Onwards, {groupName}!”
                
                Bob and Perry hopped from footprint to footprint, jumping with one foot and two foot alternatively while ChoomChoom followed slowly behind with his head down. In front of the three children was Jimmy. He studied the footprints as he followed the footprints with the three kids trailing behind him. 
                
                The footprints winded through the forest and took them deeper into the woods. Scrawny trees encased the path and the roots poked through the ground. 
                
                “Be careful of the tree roots everyone. It’s easy to trip over them if you’re not careful.” Jimmy warned the kids.
        
                * * * * * * [Continue.]
        
                As they walked further and further down the path, Jimmy felt a breeze against his cheek. A cliff began to come into view, but the footprints continued towards the cliff. Odd, Jimmy thought to himself. 
                
                The footprints ended at the edge of the cliff. There was no sight of Gabe. 
                
                “Woah! Look, we’re so high up. You can see the lake from up here!” Perry said in awe.
                
                “I know right! I’ve never been this high up before. This is so cool!” Bob added on.
                
                “Be careful up here everyone! It’s easy to slip and fall.” Jimmy cautioned. 
                
                Jimmy began to feel an inkling of unease. Where was Gabe? The footprints led here and there was no other path they could’ve taken yet there was no sign of Gabe. Did Gabe jump?
                
                No, no that was impossible. 
                
                ChoomChoom tapped Jimmy’s shoulder. “Where’s Gabe? I haven’t seen him in awhile.”
                
                Jimmy schooled his features before replying, “He headed back to the campsite because he wasn’t feeling well.”
                
                Yes, yes that’s what happened Jimmy told himself as he said those words. Gabe wasn’t missing. He simply went back to the campsite early. 
                
                Jimmy’s panic eased. 
                
                “Jimmy! Jimmy! Can we go to the lake? I want to swim in the water!” Bob asked excitedly.
                
                The sun was beginning to fully set and stars were emerging in the skies. They could squeeze in a lake trip before returning to the campsite, Jimmy thought to himself. Gabe was probably back there already so there was no harm.
                
                “Of course! That’s a great idea, Bob.” Jimmy responded.
                
                ~ gabeAlive = dead
** [Tell the kids to stay put.]
    Bob looks at Jimmy, “Is something wrong?”. “Everything is going to be fine”, Jimmy responded, patting the camper on the head. 
    {item:
        - flashlight: 
        Jimmy goes to ChoomChoom and asks to borrow his flashlight. Obtaining the flashlight, he sets off to follow the footsteps down the path. Following the footsteps, they began to go off road into an unknown path into the trees. Hesitantly, Jimmy walks down, shining his flashlight. A snap. Jimmy looked down and saw that he stepped on a branch. Slowly, he continues, though he sense an eerie presence behind him. 
        
        (Add choice here later)
        
        - mascot: 
         Perry seems slightly nervous. Jimmy notices and reassures him that BigFoot wasn’t going to pop out from behind a tree. Fidgeting some more, Perry admits that he might know where Gabe had went. 
    
        Avoiding eye contact, Perry speaks, “I lost our mascot plushie. I think I dropped it on our way down here. I told Gabe and he said he would go find it and ran off”.
        
        Jimmy asks which direction Gabe went and Perry points back down the path they were walking before, the opposite direction of the footprints. Jimmy again tells the kids to stay put and runs to find Gabe. Gabe is found wandering through a bush trying to find the plushie. Jimmy catches up with him and ushers him back to the group, scolding him not to wander on his own.
            }
        
- ~ gabeState = middle
~ currentProgression = bob
->->

=== bob_description(->ret)
{currentProgression == bob:
    As the group began their trek towards the lake, Jimmy walked behind them as they talked amongst themselves. He took in the scenery around him, admiring the chirping birds, the cool breeze that rustled the leaves up above, and the occasional squirrel running up a tree. 

    As he looked at one of the trees, he saw what looked to be a black cat sitting beside it. Jimmy was confused because it’s abnormal to see a cat like that this far into the wilderness. But before he could confirm what he was seeing, it was gone. 

    Before Jimmy could get too far into thought about the connotations of seeing a black cat, he was snapped back to reality by Bob yelling, “We made it!!!”.

    * [Time for the Lake]
      -> bob_body ->
    -> ret
}
-> DONE

=== bob_body ===
{ gabeAlive == dead:
    The campers immediately ran towards the lake. ChoomChoom grabbed some flat rocks to skip, while Bob and Perry changed into his swimsuit and cannonballed straight in.
- else:
    The campers immediately ran towards the lake. ChoomChoom and Gabe grabbed some flat rocks to skip, while Bob and Perry changed into their swimsuits and cannonballed straight in.
}

    Jimmy sat there listening to the chaos of Bob and Perry splashing each other while watching ChoomChoom somehow skip a rock eight times.
    
    The sun was about to set, so Jimmy figured it was time to head back.

    “Alrighty campers! It’s time to head back, grab your stuff and let’s get going! I’ll grab you guys some towels so you can dry off.”
    
    * [Grab some towels]
    
        Jimmy walked back to where he left his backpack and grabbed a couple towels for Bob and Perry.
    
        Suddenly, the campers began chanting “ChoomChoom! ChoomChoom! ChoomChoom!”, and as you looked over you saw ChoomChoom carrying a massive rock over his head towards the lake.
    
        This looks incredibly dangerous, and Jimmy thinks about putting a stop to this.
        
        ** [Tell ChoomChoom to put the rock down]
            ~ GabeState--
            ~ BobState--
            ~ ChoomChoomState--
            ~ PerryState--
            “Hey! Cut that out! You could hurt yourself doing that.” Jimmy exclaims.
    
            Perry has a frustrated look on his face. “Oh, come on Jimmy! Don’t you wanna see the splash this thing will make?”
    
            Jimmy retorts, “Not if it means ChoomChoom gets hurt! I don’t know about you but I am not    equipped to lug another human on my back all the way to camp.”
    
            The campers groan and ChoomChoom puts down the rock.
    
            “It’s getting dark anyway, let’s just head back to camp.”
            
            *** [Head back to camp]
                
                Jimmy turns around to get ready for the walk, but something isn’t right. 
                
                Bob is gone.
                
                A wave of panic settles over Jimmy. Did he really lose two kids in one night? Why has tonight gone so horrible? Is it his fault? What else could he have done? Questions and doubts flood his mind as he comes back to reality. He needs to figure out where Bob went, maybe one of the campers knows?
                
                    **** [Ask Perry]
                        You go to Perry to ask him about what happened to Bob
                        ~ currentProgression = perry
                            
                    **** [Ask ChoomChoom]
                        ~ currentProgression = choomchoom
        
        ** [Let them have fun]
            ~ GabeState++
            ~ BobState++
            ~ ChoomChoomState++
            ~ PerryState++
            ~ brokenArm = true
            ChoomChoom is using all of his strength, but even so it’s extremely hard to take each step. With his fellow campers cheering him on, however, he carries on. 
    
            “Come on ChoomChoom, you got this!”
    
            “Wooo!!!! Go ChoomChoom!”
            
            {item == stick:
                “Wait! Watch out for that s-”
            - else:
                “Wait! Watch out for that r-”
            }
            
            It was too late. ChoomChoom fell forward with the rock landing directly on his arm.
    
            Screams of agony interrupted the peace of the forest, and Jimmy’s heart sank. 
    
            “What happened?!” Jimmy asks while trying to comfort ChoomChoom.
    
            {item == stick:
                “Th-there was a root sticking out of the ground. I tried to tell him but he had already tripped.” Perry explains.
            - else:
                “Th-there was a stick on the ground. I tried to tell him but he had already tripped.” Perry explains.
            }
            
            “God d-” Jimmy calmed himself down. “Go grab me the towels over there, we need to keep the arm in place!”
            
            *** [Reassure ChoomChoom]
            
                Jimmy continues to reassure ChoomChoom, “It’s okay, the bone didn’t puncture your skin, so at least you’re not bleeding. We’ll go back to the camp and get an ice pack to help with the swelling once we stabilize your arm.” 
        
                Perry returns with the towels, and Jimmy improvises a splint to keep the arm from moving.
                “Can you walk?”
        
                “I think so, yeah”
        
                “Alright, let’s head back so we can get some ice on that.”
        
                **** [Head back to camp]
                
                    Jimmy turns around to get ready for the walk, but something isn’t right. 
                
                    Bob is gone.
                
                    A wave of panic settles over Jimmy. Did he really lose two kids in one night? Why has tonight gone so horrible? Is it his fault? What else could he have done? Questions and doubts flood his mind as he comes back to reality. He needs to figure out where Bob went, maybe one of the campers knows?
                
                        ***** [Ask Perry]
                            You go to Perry to ask him about what happened to Bob
                            ~ currentProgression = perry
                            
                        ***** [Ask ChoomChoom]
                            ~ currentProgression = choomchoom
    
-
->->


=== choomchoom_description(->ret) ===
{ currentProgression == choomchoom:
    { brokenArm == false:
Jimmy slowly moved towards ChoomChoom. ChoomChoom  was standing there shaking.  He was thinking about Bob and his disappearance. 

     } 
    { brokenArm == true:
	Jimmy slowly moved towards injured ChoomChoom.  ChoomChoom  was standing there shaking and in pain.  He appears to be shocked by Bob’s disappearance.  
    }
    + [Ask ChoomChoom about Bob]
        -> choomchoom_body ->
    ->ret
}
-> DONE

=== choomchoom_body ===
{ brokenArm == true:
Jimmy approached ChoomChoom asking him about his arm condition and whether it was causing any discomfort to him.  ChoomChoom seems to be grateful for Jimmy’s care.  
“Are you alright?” asked Jimmy
“I’m good, thanks for asking,” said ChoomChoom.  
“You know, I was thinking about Bob and Gabe, and it got me thinking - Will I disappear too?”
“Not if we stay together,” said Jimmy.  “I can even fight off the bigfoot if needed.”
ChoomChoom doesn’t seem very persuaded and he suddenly runs away.
-else :
Jimmy approached ChoomChoom and tried to reassure him.
“Hey buddy, are you alright?”
“I’m fine, but I think I need more time to think about this situation with Bob and Gabe,” said ChoomChoom.
“Is there anything you want to talk about?”  asked Jimmy.
“You know, I was thinking about Bob and Gabe, and it got me thinking - Will I disappear too?”
“Not if we stay together,” said Jimmy.  “I can even fight off the bigfoot if needed.”
ChoomChoom doesn’t seem very persuaded and he suddenly runs away.
}

+ [Follow him]
Following ChoomChoom led Jimmy to Kronos Forest.  After working here for so long, Jimmy started to forget how beautiful the nature around the camp was. Jimmy quickly snapped out of it and reminded himself that he needed to look for ChoomChoom.
After some time, Jimmy noticed a shaking bush, so he decided to check whether ChoomChoom was there.  Apparently, ChoomChoom hid there and fell asleep.  
A sudden headache strikes Jimmy and he feels like the voice is ripping him from the inside.  
    ** [VOICE: EAT HIM]
        A sudden burst of rage made Jimmy devour ChoomChoom.  After finishing the deed, Jimmy fell unconscious.
        After some time Jimmy woke up.  
“What happened to me? Well, I seem to be fine, ChoomChoom is nowhere to be found, but he has already reached the camp.”
“Gotta keep looking for Bob, I guess.  As I remember Perry should know something about it.”
*** [Go to Perry]
        ~currentProgression = perry
        ~ChoomChoomAlive = false
    ** [Fight the voices in your head]
       A sudden burst of rage was suppressed by Jimmy’s will.  He woke ChoomChoom up and brought him to the rest of the children.
 “Well, We still need to search for Bob.  I guess we should ask Perry.  He must know something about Bob’ disappearance.” 
“ I guess so too,” said ChoomChoom.
  *** [Go to Perry]
        ~currentProgression = perry
        ~ChoomChoomAlive = false
        ~currentProgression = perry

+ [Let him go]
   I think ChoomChoom is a smart kind and he should be able to reach the camp himself.  
As it turned out, Jimmy was right and ChoomChoom indeed managed to find his way back safely.
    “Well, I still need to search for Bob.  I guess I will ask Perry.  He must know something about Bob’ disappearance.” 
    ~ChoomChoomState--
    ~currentProgression = perry
-
->->

=== perry_description(->ret)
{currentProgression == perry:
        “Perry, do you know where Bob went?”

        “Are you kidding me? You lost another one of us?”

        “Listen, I’m trying my best. Tonight has been rough but I’m doing everything I can to keep you kids safe.”

        “Alright, fine. I think earlier he was talking about that zipline on the other side of the lake. Maybe he went there?”

        “Ok. Let’s go check it out.”

        “What do you mean? I’m not going with you.”

        “What? Why?”

        “I don’t want to turn into another one of your lost kids. I’m going to stay right here where it’s safe.”

        Frustration consumes Jimmy. “My lost kids? As if I’m trying to lose them. It’s not my fault they’re a bunch of bumbling idiots who can’t stay near the group. Who does this kid think he is? Ok Jimmy, you need to calm down. My main priority right now is finding Bob. Maybe I could just ask nicely? Or maybe he would be more receptive if I paid him?”
        -> perry_body ->
    -> ret
}
->DONE

=== perry_body ===

* [Bribe Perry]
~ PerryState--
    “I know you don’t trust me, but I really need you to come with me. Everyone wants money, right? How about if you come with me, I’ll give you ten dollars. How does that sound?”
“Wow. You’re really trying to bribe me, aren’t you? So not only have you lost Bob, but now you're trying to bribe me. What kind of camp counselor does that? You know what, I’m going back to camp to tell the other counselors what you’ve done.”
“No.”
“What do you mean, ‘No’? Nevermind, I shouldn’t even be talking to you.” Perry says as he begins to walk away.
Thoughts rush through Jimmy’s head, “Fuck. Fuck. FUCK. How the fuck do I get out of this? It’s not like he’s going to listen to anything I say, and it’s not like I can just stop him.”
A mysterious voice appears inside Jimmy’s head, “Yes you can.”“Wha- What is this? Who are you?”
“I’m you. You can stop him.”
“How?”
“Simple. Eat him.”
“What? What kind of person do you think I am? I’m not doing that. I can’t.”
“Well, you either do that, or he tells the whole camp about what you’ve done. You can’t let that happen, can you?”
** [Listen To the Voice]
~ BobAlive = false
Jimmy begins to laugh hysterically as his sanity plummets into the void.

“Hey! Hey Perry!”

“Shut up! I’m not talking to you.” 

“Just… listen to me.”

“What do you want?”

Perry turned around to face Jimmy, only to discover that he was not looking at the Jimmy he knew. Jimmy had a twisted smile and his left eye was twitching as a single tear rolled down his face.

“Run.”

“What’s happening, Jimmy?”

“RUN.”

Perry turned back towards camp and ran as fast as his legs would let him. His heart was pounding as he heard Jimmy’s footsteps getting closer, and closer, and closer.

(THUD)

Jimmy had caught up.

As Perry’s final scream dissipated into the forest, Jimmy sat there, silent.

After a while, Jimmy began his walk back to camp. As he left behind all of the tragedy he had caused, relief set in.

“It’s over… it’s finally over.”

At that moment, the ground started to shake. Jimmy wobbled around trying to get back to camp for shelter. Before he could, a branch from a tree above fell and struck him on the head, knocking him out. 

        ~ PerryAlive = false
        ~currentProgression = ending
** [Don’t Listen To the Voice]
“I… I can’t.”

“What do you mean you can’t? I’m trying to help you! That kid is about to ruin your life!”

“I know… but where does it stop? I can’t keep fixing the bad things I’ve done with more bad things. That’s not the life I want to live.”

“You’re a coward. Afraid to do what needs to be done because of what? Because you care about these stupid kids? You should be protecting yourself, not them!”

“I’m a coward? I’m accepting responsibility for my actions. You just- You can’t accept that. You’re afraid of the consequences. I know you said that you were me, but I’m nothing like you. You are a weak, pathetic, scared… thing!”

“Bahaha, this is hilarious. Why are you trying to act tough with me? Where is that going to get you? You’re stuck with me. Like I said earlier, I am you.”

“Please. Just get out of my head.”

“No can do. I need you.”

“Need me? What could you possibly need me for?”

“Let’s just say I have a particular… craving, and I can’t quite satisfy that craving without you.”

“You’re an animal.”

“I am you.”

“No… No! Get out of my head! GET OUT OF MY HEAD! GET OUT OF MY-”

Suddenly the ground began to shake. Jimmy was crying hysterically as he tried to move towards the camp. He wobbled down the path, but with both his mental and physical world collapsing around him, he collapsed.
~currentProgression = ending

    
* [Politely ask Perry to lead you to Bob]
    “Please, Perry. I’ve been having a rough night and would really appreciate the help. Sure I’ve messed up and yes I’ve been doing a horrible job, but I’m trying. It would mean a lot to me if you helped me this one time.”

    “Yeah… maybe you’re right. I’ll go with you. Oh, and sorry about what I said”

    “It’s alright. Like I said, I haven’t been doing the best job, so it’s understandable that you’re upset right now.”
    
    ** [Go find Bob]
        {brokenArm == true:
            Jimmy and Perry walk around the lake, and sure enough, there is Bob sitting next to the zipline. Jimmy notices that something isn’t right with Bob, he’s crying.

            “Hey Bob, what’s wrong?” Jimmy says gently.

            “I- It’s my fault.” Bob says while sniffling.

            “What do you mean?”

            {item == stick:
                “ChoomChoom tripped on my lucky stick. I dropped it when I started cheering him on, but it landed right in front of him. I’m such an idiot, I don't know how I didn’t notice.”
                *** [Forgive Bob]
                    “It’s alright Bob, everyone makes mistakes. All responsibility falls on me, I shouldn’t have even let him carry that rock in the first place.”

                    “Are you sure?”

                    “Yup, now let’s head back, we’ve been worried about you!”

                    “I’m sorry, I just felt like I needed to run away from it all.”

                    “I know, we’re just happy to have you back.”
                    
                    ~ BobState++
                    
                    -> perry_end

                *** [Shame Bob]
                    “I’m disappointed in you, Bob. You need to be more careful, especially in a situation as dangerous as that!”

                    “I-I’m sorry Jimmy…”

                    “Don’t apologize to me, apologize to ChoomChoom. In fact, let’s get back to him so you can do just that.”
                    
                    ~ BobState--
                    
                    -> perry_end

            - else:
                “I’m the one that told ChoomChoom to throw that rock into the lake. He broke his arm because of me.”

                “Oh Bob, it’s okay, nobody could have expected it to turn out how it did. You shouldn’t take responsibility for that. Nobody is blaming you.”

                “Really?”

                “Yup, now let’s head back, we’ve been worried about you!”

                “I’m sorry, I just felt like I needed to run away from it all.”

                “I know, we’re just happy to have you back.”
                
                ~BobState++
                
                -> perry_end

            }
            
        - else:
            Jimmy and Perry walk around the lake, and sure enough, there is Bob sitting next to the zipline.

            “Hey Bob! What are you doing over here?”

            “Oh, sorry! I wanted to try out the zipline before we went back to camp.”

            “It’s alright, just make sure to tell me next time.
            
            -> perry_end
        }
-
->->

=== perry_end ===
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





    

