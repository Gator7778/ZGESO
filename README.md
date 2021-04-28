# ZGESO

<img src="https://i.imgur.com/9ezGOIV.png">

A Public Domain leveling guide produced by Zygor Guides, updated and maintained by Hydra9268. The purpose of this project is to add leveling guides for new content and extend the life for as long as ESO is available.

* Zygor's Discontinued support announcement: https://zygorguides.com/blog/zygor-guides-elder-scrolls-online-guides-going-free-use/
* Zygor staff okaying community development: http://zygorguides.com/forum/showthread.php?21769-Summerset-Question&p=121501&viewfull=1#post121501

<br><img src="https://i.imgur.com/WnfLf4W.png">

Install through the excellent add-on manager <a href="https://minion.mmoui.com/" target="blank">Minion</a>

#### Libraries Required

* LibGPS, LibMapPing, LibDebugLogger, LibChatMessage

### 4/24/21 Blackwood Guide Coming Soon (Thanks to snichols7778)! 

<img src="https://i.imgur.com/GYcFbv7.png">
<i>artwork &copy; ZeniMax Media</i>

### 3/27/21 Skyrim Guides Now Available (Thanks to snichols7778)! 

<img src="https://i.imgur.com/bsUJyDD.png">
<i>artwork &copy; ZeniMax Media</i>

### Recent Updates

* 3/13/21 merge: Sharlikran: Misc changes and updates

* 3/13/21 merge: Sharlikran: Removed embedded libraries. Fixed /zgpos output

* 3/13/21 merge: Krandor1: Fix for the two glumbra bugs reported by AegonVI

* 3/13/21 merge: Krandor1: Reorder bleakrock quests so hero of bleakrock achivement can be earned. Bug request from Cavanoskus on forums.

* 11/2/20: API version now supports Dragonhold

* 8/12/20: API version now supports Scalebreaker

* 7/27/20: Northern Elsweyr Guide Out Now!

<!--
### Coming Soon

* Western Skyrim guide by snichols7778
-->

# Development Guide

### ZGESO Version Breakdown

For example, 1.4.96

* `1` = Major version and authored by Zygor
* `4` = Minor version authored by Zygor, or with substantial improvements
* `96` = Community version based on the total number of Github commits (This is the version number on the ESOUI website)

----

### Development HOW-TO


`goto wailingprison4_base 50.00,50.00`
* `goto` = Tells the arrow where to point. Auto-advances to the next step if nothing but goto and step exist.
* `wailingprison4_base` = the current map's DDS reference. It only works when the user is in the zone.
* `50.00,50.00` = the floating-point x and y coordinates Decimal values are optional but highly recommended for precision.
* Note: Once the map's DDS is declared, you can exclude it (e.g., `goto 50.00,50.00`)

#### These actions auto-advance to the next step

`accept` = Accept quests.<br/>
`turnin` = Turn in quests.<br/>
`wayshrine` = Discover wayshrines.<br/>
`step` = Declares a guide step.<br/>


#### These actions are purely visual and do not auto-advance to the next step

`talk` = Talk to NPCs.<br/>
`click` = Clicking objects and doors.<br/>
`'` = Adds general information.<br/>


##### Goal Handlers - requires a pipe | in front to activate (e.g. |tip, |q, |count)

`|q` = Creates a step in ZGESO's progress bar. It also denotes the current step's quest.

`/` = Placed on the same line after `|q`. The slash checks for a completed task in the Quest Journal for the current step's quest. Note: Must match the task word-for-word, space-for-space to register as completed.

`|tip` = Handler for displaying tips in a small font. Note: placing a `|tip` in a `|goto` step prevents the action from automatically going to the next step when meeting the condition.

`|next Aldmeri Dominion Leveling Guides\\Khenarthi's Roost` = Instructs ZGESO to skip to another guide
* `next` = Handler that tells the guide to load another guide
* `Aldmeri Dominion Leveling Guides\\Khenarthi's Roost` = the RegisterGuide to load

`|count #` = Handler to track a sequence of objectives

`|only if` = Conditional handler

For example<br>
`|only if ZGV.Utils.GetPlayerPreciseLevel() < 6 and _G.GetCurrentMapZoneIndex() == 712`<br>
Only allow this step if the player's precise level is less than 6 and the current map zone index equals 712 (which is Elsweyr)

`|only if not ZGV.QuestTracker:IsQuestComplete("A City in Black")`<br>
Only allow this step if the player hasn't completed the quest.

`|only if not ZGV.Quests:HasQuest("A City in Black") or ZGV.Quests:IsQuestComplete("A City in Black")`<br>
Only allow this step if the player doesn't have the quest or hasn't completed the quest.

`|only not ZGV.Quests:HasQuest("A City in Black")`<br>
It appears to be the best method for accepting quests. `|only if not` causes the step to stick after accepting the quest.

`|only ZGV.Quests:HasQuest("A City in Black")`<br>
It appears to be the best method for quest steps. `|only if` causes the step to stick after accepting the quest.

`|or` = Handler for dialog choices (Note: you need to put the |or handler for each selection)

For example<br>
```
'Choose either a Marine or Wizard to help you
|tip It doesn't matter, just personal preference.
'Talk to either _Sergeant Firion_ or _Gathwen_
'Choose the Marine to help you |q The Tempest Unleashed/The Marine |or
'_OR_
'Choose the Wizard to help you |q The Tempest Unleashed/The Wizard |or
step
```

*To see a complete list of Types and Handlers, review Goal.lua*

----

### Slash commands

* `/re` = /reloadui
* `/zgpos` - For city and delve data. Also displays the map's correct DDS filename.
* `/zgpos gps` - For general map data. Works in any map.
* `/dump ZGFunctionName(arguments)` - A way to execute ZGESO's public functions<br> (e.g. `/dump ZGV.Pointer:GetDistToCoords(alinor_base,48.80,54.64)`)

#### /dump functions of note:

* `/dump ZGV.Data:GetQuestIdByName("A City in Black")` - Returns the quest id
* `/dump ZGV.Quests:IsQuestComplete("A City in Black")` - returns a boolean
* `/dump ZGV.Quests:HasQuest("A City in Black")` - return a boolean


----

### Addon Resource

* <a href="https://esoui.com/downloads/fileinfo.php?id=2062#info" target="_blank">Addon page on ESO UI</a>
* <a href="https://www.zygorguides.com/forum/forumdisplay.php?84-Leveling-Guides" target="_blank">Discussion forum related to Zygor's original ESO</a> (Slightly deprecated, but I regularly visit)

----

### Additional Resources

* https://esodata.uesp.net/100034/functioncalls.txt
* https://esodata.uesp.net/100034/
* https://wiki.esoui.com/API
* https://wiki.esoui.com/Texture_List
* https://mothereff.in/lua-minifier
* https://esomap.uesp.net/
* https://en.uesp.net/wiki
* https://game-maps.com/ESO/The-Elder-Scrolls-Online.asp
