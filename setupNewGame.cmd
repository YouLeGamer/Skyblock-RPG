if not defined gameVersion call error001.cmd

::User has to choose his username
:chooseUsername
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                       Choose your username.                                                                      :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p username="> "
::If it already exists a save file with the same username, the player has to know that this username's already taken. Else, he can continue.
if exist ./saves/%username%.sav goto usernameAlreadyExist
goto statsSetup

:usernameAlreadyExist
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                               Error: This username already exists!                                                               :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
pause
goto chooseUsername

:statsSetup
::All the stats (variables) are setupping here. These stats include health, money (normal stats) as well as game critical stats, possession stats, levels, etc...
cls
echo.
echo --------------------------------------------------------------------------
echo :                                                                        :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Initialization
::This part is just for aestethic, there's no real use for it... for now at least
cls
echo.
echo --------------------------------------------------------------------------
echo :@@                                                                      :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Player Statistics
:: VARIABLES: Player Statistics
set health=100
set money=0
set deathCount=0
set location=islandBeginning
set mana=100
set defense=100
set speed=100
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@                                                                   :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Skills Statistics
:: VARIABLES: Skills Statistics
set combatLevel=0
set foragingLevel=0
set miningLevel=0
set farmingLevel=0
set fishingLevel=0
set runecraftingLevel=0
set alchemyLevel=0
set combatXp=0
set foragingXp=0
set miningXp=0
set farmingXp=0
set fishingXp=0
set runecraftingXp=0
set alchemyXp=0
set maxCombatLvl=60
set maxForagingLvl=50
set maxMiningLvl=60
set maxFarmingLvl=60
set maxFishingLvl=30
set maxRunecraftingLvl=20
set maxAlchemyLvl=15
set maxCombatXp=100
set maxForagingXp=100
set maxMiningXp=100
set maxFarmingXp=100
set maxFishingXp=100
set maxRunecraftingXp=100
set maxAlchemyXp=100
set oldCombatLvl=0
set oldForagingLvl=0
set oldMiningLvl=0
set oldFarmingLvl=0
set oldFishingLvl=0
set oldRunecraftingLvl=0
set oldAlchemyLvl=0
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@                                                               :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Collections
:: VARIABLES: Collections
set stoneCollection=0
set stoneCollectionLevel=0
set brokenStone=0
set oakWoodCollection=false
set oakWoodCollectionLevel=0
set brokenOakWood=0
set sandCollection=false
set sandCollectionLevel=0
set brokenSand=0
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@                                                          :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Inventory (Materials)
:: VARIABLES: Inventory (Materials) : Quantities, hasItem
set hasOakWood=false
set oakWoodQty=0
set hasStone=false
set stoneQty=0
set hasGrass=false
set GrassQty=0
set hasSand=false
set SandQty=0
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@                                                       :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Inventory (Weapons)
:: VARIABLES: Inventory (Weapons) : Quantities, hasItem, current weapon
set hasWoodenSword=false
set woodenSwordQty=0
set currentWeapon=Fist
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@@@@                                                    :
echo --------------------------------------------------------------------------
echo.
echo Game Settuping: Inventory (Tools)
:: VARIABLES: Inventory (Tools) : Quantities, hasItem, current tool
set hasWoodenAxe=false
set woodenAxeQty=0
set hasWoodenShovel=false
set woodenShovelQty=0
set hasWoodenHoe=false
set woodenHoeQty=0
set hasWoodenPickaxe=false
set woodenPickaxeQty=0
set currentTool=Fist
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@@@@@@@@                                                :
echo --------------------------------------------------------------------------
echo.
echo Game Settuping: Inventory (Armors)
:: VARIABLES: Inventory (Armors) : Quantities, hasItem, worn armor
set wornHelmet=No helmet worn.
set wornChestplate=No chestplate worn.
set wornLeggings=No leggings worn.
set wornBoots=No boots worn.
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                        :
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Inventory (Accessories)
:: VARIABLES: Inventory (Accessories) : Quantities, hasItem, current accessory
set currentAccessory=No accessory worn.
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                      :
echo --------------------------------------------------------------------------
echo.
echo Game Settuping: Quests
:: VARIABLES: Quests
set tutorialQuest=false
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          :
echo --------------------------------------------------------------------------
echo.
echo Game Settuping: Checking for save files...
::Checks if the folder saves exists
if not exist ./saves (
	mkdir saves
)
::Checks if the %username%.sav file exists
if not exist ./saves/%username%.sav (
	@echo on
	@echo off
) > .\saves\%username%.sav
goto setupComplete

:setupComplete
cls
echo.
echo --------------------------------------------------------------------------
echo :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:
echo --------------------------------------------------------------------------
echo.
echo Game Setupping: Setup sucessfully complete!
echo.
echo Press C to begin the game!
set /p enter="> "
if %enter% equ c (
	if %location% equ islandBeginning (
		call ./scripts/islandBeginning.cmd
	) else (call error002.cmd)
)
if %enter% equ C (
	if %location% equ islandBeginning (
		call ./scripts/islandBeginning.cmd
	) else (call error002.cmd)
)
