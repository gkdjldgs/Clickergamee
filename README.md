# Clickergamee

Introduction

So this is my first clicker game on godot, if I'm being honest this week I felt a bit burnt out so I opted to go for a really simple game.
You use your mouse to click the syrup button gaining you more syrup with every click, and progress through buying upgrades slowly with your syrup

The Theme

This weeks theme was related to Fall, as a Canadian this instantly activated the neurons in my brain and caused me to think about syrup.
This theme can be seen in effect through the game's design, the background is supposed to give fall vibes(it was a fall shutterstock gradient)
One of the upgrades actually causes leaves to fall, which is very similar to the effect the weather has on trees during autumn.
Also maple syrup which seems to be very related to fall is a huge part of the game, as its the currency and the basis for some of the upgrades.

Creation of the game / Codespace

This part details the process I made to actually create the game, I'll just walk through the general timeline
1. I added a button to game that increases the amount of syrup by 1, I added a weird textlabel to the game, which allowed me to see the amount
  of syrup collected, it was weird because the RichTextLabel hasn't appeared correctly after cloning it from a different scene
2. I made a different scene in the game that would act as my shop menu, little did I know I would spend like 80% of my time on this one screen alone
   but for now it was empty.
3. I added a very simple button that switches between the scenes, which was added to both the main and shop scene. Then for the shop, I added one
   single button
4. At this point I really had no idea what I wanted the upgrades to be, so I went into a google doc and after a bit, came up with 3 upgrades,
   the 1st, clicking with a higher base value(better harversting), an item that would spawn and give a passive income of syrup, but break over
   time, requiring repairs. Then finally a leaf/syrup rain that would fall from the sky, requiring collection for funky boosts or debuffs. My
   idea with designing upgrade 2 and 3 were that after looking at a bunch of clicker games online(I was really stuck for ideas) I wanted to make
   a clicker game where the player would have to pay attention a bit.(Unfortunatly I did not know the reprecussions this would have.)
5. At this point I opened up the good old piskel and drew a good hunk of my sprites(he does this one secret, AI hates him), because atp most of the buttons where blank, so were the sprites
  but I ran into weird issues with the buttons, so I had to come up with a solution by using self modulate on the buttons, setting it to transparent
  and overlaying the actual seperate sprite a layer below, so it would still work correctly.
6. So I kinda just fleshed out the shop a bit, adding descriptions for the powerups, an amount and cost label for each.
7. So this is where my hands down biggest roadblock and greatest timesink came in. UPGRADE 2. How I wanted it to work is that the syrup refineries spawn when you switch to
   the main page and despawn when you switch to the shop(which was a full screen one). This did not work, as the syrup refineries I found were very hard to remove, not to
   mention the dang code to randomly make them broken and in need of repair was not working. It was supposed to show() when broken and hide() when broken == false, no I am
   not good at coding to fix this. Did I mention the scale was way off, too small, also if I set the amount of refineries to spawn above 2, the 2nd one would be shipped off
   to Narnia so only one would appear on the screen.
8. So it takes like 3 hours ish of me banging my head into the wall to realize I need to comprimise on something. So I take action and make it so the refineries will not
   break, that too hard, and I tweak the for x in range() command a bit to adjust the spawning location, and it works.(It can take me very long to find very simple solutions)
   I just increased the scale in the editor before bringing it to the scene.
9. This one problem feels like it deserves its own section, because the syrup refiner spawning activation was bad. It persisted between scenes, did not spawn and it made 2?
    I just did what I could and made a compromise by decreasing the amount you get per refinery by half, I shrunk the shop down to a 1/3 so the dang trees could fit above it
   and for the spawning I just changed it so it would only check when the buy button is pressed. Finally, after all that it works.
10. I added the adobe stock photo background to the game, the title, boxes to make the buttons and menu stand out more, came up with Syrup Shop
11. I finally finished up upgrade 3, and used timers to make the leaves despawn after a time and also for the buffs they give
12. Finally, I worked on the end scene of the game, which was way too janky with the final upgrade. I tried to do this whole thing where a button appears on the main screen,
    which would fill up the empty space, and take you to the end, suprise suprise that failed, I just made it so the game finishs on the final upgrade, and also just adjusted
    the progression mutipliers for each purchase(stuff gets more expensive as you buy more)

Note about the code & credits:
  usually I just search it up on google, but I was able to steal it from earlier games, yippee.
  I didn't use any drawings or custom fonts from the internet this time, but google helped in getting 
  examples about how to draw things and the one shade of brown I keep using.

  Thank you
