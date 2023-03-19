# Skyblock-RPG

## What's Skyblock RPG?
Skyblock RPG is a RPG, fully developped in Batch programming language, and that runs in an Windows 10 cmd (that I'll call "terminal" next).

It's a project of a RPG that I make as a "programming contest of "what language is better"" with Minecraft Friend firefood (ce bg). Me, as a little challenge, I developp in a horrible language to handle and not made for that AT ALL (it's batch) and firefood develops in his favourite language, Python.

I began this project on March, 7th 2023.

### Some inspirations about Skyblock RPG
Skyblock RPG is heavily inspired, and when I say heavily inspired it's ALMOST FULLY COPIED of the Hypixel Minecraft Sever minigame "Skyblock", where you are on an island with no much than a tree... and you have to level up skills and skills, like Combat or Mining for example.

Skyblock RPG is also derived of another project I also made with firefood, "Big Caverns", which meant "do the whole skyblock experience in housing" (another Hypixel minigame similar to freebuild), that we quite stopped to be honest.

## How to play?
(more infos coming soon, for now the game isn't really playable even...)

## Infos for nerds
### How does it work?
The game is based on some variables that are very important, that are named "critical variables" in the error handler, which are for now %enter%, %location% and %gameVersion%.

Each of these variables have a use, for example %gameVersion% provides help for debugging but also blocks launching a script without passing by the main .bat file.
These variables lead the game from beginning to end.

### One Thousand and One Scripts
Most of the game is not in the main .bat file. To be honest, it only manages the save and load handler as well as the main menu and title screen. And that's it. The rest, heh, it's in the "scripts" folder. If you open it you'll see that it is FULL OF BATCH SCRIPTS that all ends not with .bat but with .cmd (scripts extension for really great nerds haha).

Those scripts work together, and they do very well. For example, when you load a save, the main .bat file calls "loadSave.cmd" which loads all the variables from a .sav file located in saves folder, and THEN according to the location contained in the .sav file, it loads the following script of location, in which with a condtional you can be driven to the good area. And that goes in less than a second after you put your username in the terminal... Batch is really wonderful.

## Making DLCs ? (DownLoadable Contents)
For now there's nothing provided for DLCs, because the game is still in heavy developpement (see "How to play?") but I surely will make a guide or so about it, maybe in another repository. IDK TO BE HONEST.

## Useful Links
[firefood's GitHub page] ("https://github.com/caca63/")
