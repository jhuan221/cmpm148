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

Camp Cronos
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

* [The kids are staying put]
“Bob, you’re in charge. I’ll be back soon.” 

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



