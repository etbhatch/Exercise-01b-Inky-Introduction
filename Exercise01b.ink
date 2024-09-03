/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
 
 Editor's Note: My goal was mostly to work on my writing, so that is why I made more lines than the required amount. If the story is either interesting or slightly confusing, I did my job right.
*/

-> beach_shore

== beach_shore ==
You stand at the waters edge, gazing into the near infinite sea. You hear what sounds like a sweet melody, calling to you from the stars reflecting in the water. Behind you lies a dark cave, cold and unfeeling.
*Listen to the song. ->listen_beach
*[Head for the cave.] ->dark_cave
*[Wade out into the waves.] ->wade_waters

==dark_cave==
The cave you now stand in is dark, cold, and unfeeling. You feel as though just standing here is enough to make your skin crawl. You can hear your heatbeat, pulsating through your chest. Fear. Yet, perhaps this is your only option to make a choice that is your own.
*[Head deeper.] ->deep_cave
*[Turn back.] ->beach_shore

==deep_cave==
You feel the rush of wind against your face. You stand at the edge of a cliff, staring into the great beyond. You're back home. It almost feels as though you never left. {sprint_cave: Though something is missing, you can't quite figure out what.} Your father calls for you, worried since you went missing.
"Welcome back," he says with a smile. "Tell me, did you find what you were looking for?"
-> END

==listen_beach==
You stand there, listening to the song. It makes you feel...at peace. That your worries can finally dissapear. The answers to that question burning deep within your heart, may finally be understood. All you must do, is head forward and never look back. {not seashell_pickup: Though the beautiful shell on the ground may make you feel better.}
*[Sprint for the cave.] ->sprint_cave
*[Wade out into the waves.] ->wade_waters
*[Pick up the seashell.] ->seashell_pickup 

==seashell_pickup==
You now have a seashell, perhaps your mother would like it.
-> listen_beach

==sprint_cave==
You ran, trying to break free from the calling sea. You're out of breath, gasping for air. The air tastes old, stale, and damp.{seashell_pickup: You must have dropped the shell during your sprint.} You know that if you head back now, your father should be waiting with open arms.
*[Head home.] ->deep_cave
*[Go back to the water.] ->beach_shore

==wade_waters==
You wade out, feeling the cold water rush around you. It makes you feel alive. You feel, happy. 
{listen_beach:You feel at peace. Listening to the song of the waves.}
*[Go deeper.] ->deep_waves
*[Head home.] -> deep_cave_water

==deep_cave_water==
You made it home, you feel happy, a smile still planted on your face. {listen_beach:The song still radiating in your soul. Making the whole world seem brighter.}
"Welcome home," your father says, a smile on his face. "You look happy today! Let's head home, your mother is worried. You can tell us about your adventure when we get back." 
{seashell_pickup: "Hey, that's a beautiful shell you have there. I'm sure you mother would love it."}
*{seashell_pickup} [Give the seashell as a present for your mother.]->seashell_gift
*[Go home] ->END

==seashell_gift==
You gave the seashell to your mother when you got home. She noticed how happy you seemed from your day and acepted the seashell with a smile that matched yours.
-> END

==deep_waves==
You feel ensared by the song of the waves. You feel at peace, yet you desire more. You need to go deeper.
*[Go even deeper.] ->deeper_waves

==deeper_waves==
You feel as though you are floating in an infinite void. You feel good, you feel happy. Almost as though nothing matters at all. Almost as though you no longer exist.
-> END