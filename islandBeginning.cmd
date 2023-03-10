if not defined gameVersion call error001.cmd
if %location% equ islandBeginning goto breakTheTree
if %location% equ islandBeginningJerry goto goesJerryIsland

::Beginning of the game
::The user has only 1 possibility for now: break a tree. However, he can use most commands, as /commandshelp, for example.
:breakTheTree
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                          @@@@             ###                                                       :
echo :                                               #######                                @@@@@@               #######                                                :
echo :                                             ##                  +++                 @@@@@@@@@@                ####                                               :
echo :                                          ###                    +++                 @@@@@@@@@@@                   #                                              :
echo :                                        #                        +++                 @@@@@@@@                          ##                                         :
echo :                                        #                                              @@@@@                             ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : You can:                                                                                                                                                         :
echo :      1) Break a tree                                                                                                                                             :
echo :      2) Use the workbench                                                                                                                                        :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ cmds call ./scripts/commandsHelp.cmd
if %enter% equ commands call ./scripts/commandsHelp.cmd
if %enter% equ commandshelp call ./scripts/commandsHelp.cmd
if %enter% equ 2 goto workbenchCannotUse
if %enter% equ 1 goto doesBreakTheTree

:workbenchCannotUse
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                          @@@@             ###                                                       :
echo :                                               #######                                @@@@@@               #######                                                :
echo :                                             ##                  +++                 @@@@@@@@@@                   ####                                            :
echo :                                          ###                    +++                 @@@@@@@@@@@                      #                                           :
echo :                                        #                        +++                 @@@@@@@@                          ##                                         :
echo :                                        #                                              @@@@@                             ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo :                                                  You don't have anything to craft with that workbench, do you?                                                   :
echo :                                                                                                                                                                  :
echo :                                                                       Press Y to continue.                                                                       :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ Y goto breakTheTree
if %enter% equ y goto breakTheTree
goto workbenchCannotUse

:doesBreakTheTree
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                          @@@@             ###                                                       :
echo :                                               #######                                @@@@@@               #######                                                :
echo :                                             ##                  +++                 @@@@@@@@@@                   ####                                            :
echo :                                          ###                    +++                 @@@@@@@@@@@                      #                                           :
echo :                                        #                        +++                 @@@@@@@@                          ##                                         :
echo :                                        #                                              @@@@@                             ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo :                                                                                                                                                                  :
echo :                                                                       Breaking the tree...                                                                       :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
timeout /t 3 /nobreak >nul
goto rewardsBreakingTree

:rewardsBreakingTree
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo :                                                                 YES! You broke the tree and got:                                                                 :
echo :                                                                            10 Oak Wood                                                                           :
echo :                                      COLLECTION UNLOCKED: Oak Wood                                   Press 1 to continue...                                      :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
set hasOakWood=true
set /a oakWoodQty=%oakWoodQty%+10
set oakWoodCollection=true
set /a brokenOakWood=%brokenOakWood%+10
echo.
set /p enter="> "
if %enter% equ 1 goto shouldUseWorkbench
goto rewardsBreakingTree

:shouldUseWorkbench
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : You can:                                                                                                                                                         :
echo :      1) Use the workbench                                                                                                                                        :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ cmds call ./scripts/commandsHelp.cmd
if %enter% equ commands call ./scripts/commandsHelp.cmd
if %enter% equ commandshelp call ./scripts/commandsHelp.cmd
if %enter% equ 1 goto useWorkbench

:useWorkbench
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : You can craft :                                                                                                                                                  :
echo :      1) Wooden Pickaxe                                                                                                                                           :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
set /p enter="> "
if %enter% neq 1 goto shouldUseWorkbench
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo :                                                                                                                                                                  :
echo :                                                                   Crafting a Wooden Pickaxe...                                                                   :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
timeout /t 3 /nobreak >nul
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo :                                                                                                                                                                  :
echo :                                                                  +1 Wooden Pickaxe, -3 Oak Wood                                                                  :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
set hasWoodenPickaxe=true
set woodenPickaxeQty=1
set /a oakWoodQty=%oakWoodQty%-3
timeout /t 2 /nobreak >nul
goto makeBridge


:makeBridge
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
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
echo :                                                                                         #####                                                                    :
echo :                                                                                   ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : You can:                                                                                                                                                         :
echo :      1) Build a bridge to the other island                                                                                                                       :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% neq 1 goto makeBridge
timeout /t 4 /nobreak >nul
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island ]                           #                             ##                                                                                         :
echo :--------------                            #####                     ###                                                                                           :
echo :                                               ######         ######                                                                                              :
echo :                                                     #########                                                                                                    :
echo :                                                        @@@                                                                                                       :
echo :                                                        @@@                                                                                                       :
echo :                                                        @@@                                                                                                       :
echo :                                                        @@@                                                                                                       :
echo :                                                        @@@                                                                                                       :
echo :                                                        @@@                                                                                                       :
echo :                                                        @@@                                                                                                       :
echo :                                                         @@@                                                                                                      :
echo :                                                         @@@                                                                                                      :
echo :                                                          @@@                                                                                                     :
echo :                                                           @@@@                                                                                                   :
echo :                                                            @@@@@                                                                                                 :
echo :                                                              @@@                                                                                                 :
echo :                                                               @@@                                                                                                :
echo :                                                                @@@                                                                                               :
echo :                                                                 @@@                                                                                              :
echo :                                                                  @@@                                                                                             :
echo :                                                                  @@@                                                                                             :
echo :                                                                   @@@                   #####                                                                    :
echo :                                                                   @@@             ######     #####                                                               :
echo :                                                                 ##################                ####                                                           :
echo :                                                             ####                                      #                                                          :
echo :                                                      #######                                           ###                                                       :
echo :                                               #######                                                     #######                                                :
echo :                                             ##                  +++                                              ####                                            :
echo :                                          ###                    +++                                                  #                                           :
echo :                                        #                        +++                                                   ##                                         :
echo :                                        #                                                                                ####                                     :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : TUTORIAL #1: Moving in Skyblock RPG                                                                                                                              :
echo :      To move, you can use the commands north, south, east and west. You will then move at the direction you asked, if there is something there.                  :
echo :      You should try to type the command 'north', and see what happens! (NOTE: You will then be able to save the game.)                                           :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ cmds call ./scripts/commandsHelp.cmd
if %enter% equ commands call ./scripts/commandsHelp.cmd
if %enter% equ commandshelp call ./scripts/commandsHelp.cmd
if %enter% equ north goto goesJerryIsland

:goesJerryIsland
set location=islandBeginningJerry
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island: Jerry's Island ]                                                                                                                                    :
echo :------------------------------                                                                                                                                    :
echo :                                                                  ############                                                                                    :
echo :                                                         #########            ######                                                                              :
echo :                                                  #######                           ##                                                                            :
echo :                                             #####                                    #                                                                           :
echo :                                         ####                                          #                                                                          :
echo :                                        #                                                #                                                                        :
echo :                                     ###          -------------                          #                                                                        :
echo :                                    #               @@@@@@@@@                           #                                                                         :
echo :                                    #                                                    ##                                       #####                           :
echo :                                    #     /\                                                #                                #####     #                          :
echo :                                   #      \/                                                #                               #           #                         :
echo :                                   #                                                        #                              #            #                         :
echo :                                   #                                                        #                              #         ###                          :
echo :                                    #                                                       #                               ##    ###                             :
echo :                                     ##                                           #########                                  ####                                 :
echo :                                       ####                                   #####                                                                               :
echo :                                           #                            #####                                                                                     :
echo :                                            #   ##                #####                                                                                           :
echo :                                            #  # #            ##                                                                                                  :
echo :                                            #  #   ###         #                                                                                                  :
echo :                                             ##      ##        #                                                                                                  :
echo :                                                       #        #                                                                                                 :
echo :                                                        ########                                                                                                  :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                            @@@                                                                                                   :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : You can:                                                                                                                                                         :
echo :      1) Talk to Jerry                                                                                                                                            :
echo :      2) Look at the strange purply thing behind Jerry                                                                                                            :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ 1 goto talkJerry
if %enter% equ 2 goto lookPortal
if %enter% equ cmds call ./scripts/commandsHelp.cmd
if %enter% equ commands call ./scripts/commandsHelp.cmd
if %enter% equ commandshelp call ./scripts/commandsHelp.cmd
if %enter% equ north goto teleportation
if %enter% equ save call ./scripts/save.cmd
goto goesJerryIsland

:talkJerry
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island: Jerry's Island ]                                                                                                                                    :
echo :------------------------------                                                                                                                                    :
echo :                                                                  ############                                                                                    :
echo :                                                         #########            ######                                                                              :
echo :                                                  #######                           ##                                                                            :
echo :                                             #####                                    #                                                                           :
echo :                                         ####                                          #                                                                          :
echo :                                        #                                                #                                                                        :
echo :                                     ###          -------------                          #                                                                        :
echo :                                    #               @@@@@@@@@                           #                                                                         :
echo :                                    #                                                    ##                                       #####                           :
echo :                                    #     /\                                                #                                #####     #                          :
echo :                                   #      \/                                                #                               #           #                         :
echo :                                   #                                                        #                              #            #                         :
echo :                                   #                                                        #                              #         ###                          :
echo :                                    #                                                       #                               ##    ###                             :
echo :                                     ##                                           #########                                  ####                                 :
echo :                                       ####                                   #####                                                                               :
echo :                                           #                            #####                                                                                     :
echo :                                            #   ##                #####                                                                                           :
echo :                                            #  # #            ##                                                                                                  :
echo :                                            #  #   ###         #                                                                                                  :
echo :                                             ##      ##        #                                                                                                  :
echo :                                                       #        #                                                                                                 :
echo :                                                        ########                                                                                                  :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                            @@@                                                                                                   :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : [NPC] Jerry: Hey there! My name's Jerry. Nice to meet you. I heard your name is %username%, is it right? So, you're maybe asking yourself what I'm doing on this :
echo :              island. Well, I'm like... your personal assistant! So you should be happy to have me with you... If you have any question, you may ask me tough.    :
echo :                                                                      Press 1 to continue...                                                                      :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% neq 1 goto talkJerry
goto talkJerry2

:talkJerry2
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island: Jerry's Island ]                                                                                                                                    :
echo :------------------------------                                                                                                                                    :
echo :                                                                  ############                                                                                    :
echo :                                                         #########            ######                                                                              :
echo :                                                  #######                           ##                                                                            :
echo :                                             #####                                    #                                                                           :
echo :                                         ####                                          #                                                                          :
echo :                                        #                                                #                                                                        :
echo :                                     ###          -------------                          #                                                                        :
echo :                                    #               @@@@@@@@@                           #                                                                         :
echo :                                    #                                                    ##                                       #####                           :
echo :                                    #     /\                                                #                                #####     #                          :
echo :                                   #      \/                                                #                               #           #                         :
echo :                                   #                                                        #                              #            #                         :
echo :                                   #                                                        #                              #         ###                          :
echo :                                    #                                                       #                               ##    ###                             :
echo :                                     ##                                           #########                                  ####                                 :
echo :                                       ####                                   #####                                                                               :
echo :                                           #                            #####                                                                                     :
echo :                                            #   ##                #####                                                                                           :
echo :                                            #  # #            ##                                                                                                  :
echo :                                            #  #   ###         #                                                                                                  :
echo :                                             ##      ##        #                                                                                                  :
echo :                                                       #        #                                                                                                 :
echo :                                                        ########                                                                                                  :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                            @@@                                                                                                   :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : [NPC] Jerry: Oh, but I'm rather sure you have a question for me! :D About that thing behind me I guess? I WAS SURE OF IT HAHA!! See, it's a magical portal.      :
echo :              You don't believe in magic? Agh, then go through it and see by yourself! Where will it bring you? To the Hub, of course, what a silly question...   :
echo :                                                                      Press 1 to continue...                                                                      :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% neq 1 goto talkJerry2
goto talkJerry3

:talkJerry3
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island: Jerry's Island ]                                                                                                                                    :
echo :------------------------------                                                                                                                                    :
echo :                                                                  ############                                                                                    :
echo :                                                         #########            ######                                                                              :
echo :                                                  #######                           ##                                                                            :
echo :                                             #####                                    #                                                                           :
echo :                                         ####                                          #                                                                          :
echo :                                        #                                                #                                                                        :
echo :                                     ###          -------------                          #                                                                        :
echo :                                    #               @@@@@@@@@                           #                                                                         :
echo :                                    #                                                    ##                                       #####                           :
echo :                                    #     /\                                                #                                #####     #                          :
echo :                                   #      \/                                                #                               #           #                         :
echo :                                   #                                                        #                              #            #                         :
echo :                                   #                                                        #                              #         ###                          :
echo :                                    #                                                       #                               ##    ###                             :
echo :                                     ##                                           #########                                  ####                                 :
echo :                                       ####                                   #####                                                                               :
echo :                                           #                            #####                                                                                     :
echo :                                            #   ##                #####                                                                                           :
echo :                                            #  # #            ##                                                                                                  :
echo :                                            #  #   ###         #                                                                                                  :
echo :                                             ##      ##        #                                                                                                  :
echo :                                                       #        #                                                                                                 :
echo :                                                        ########                                                                                                  :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                            @@@                                                                                                   :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : [NPC] Jerry: YES, I'm your personnal assistant. YES, I must answer all your questions. But that one was quite obvious, wasn't it? Alright, forgive this...       :
echo :              If you ask yourself, the portal is a the north!                                                                                                     :
echo :                                                                        Press 1 to continue.                                                                      :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% neq 1 goto talkJerry3
goto shouldUsePortal

:shouldUsePortal
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island: Jerry's Island ]                                                                                                                                    :
echo :------------------------------                                                                                                                                    :
echo :                                                                  ############                                                                                    :
echo :                                                         #########            ######                                                                              :
echo :                                                  #######                           ##                                                                            :
echo :                                             #####                                    #                                                                           :
echo :                                         ####                                          #                                                                          :
echo :                                        #                                                #                                                                        :
echo :                                     ###          -------------                          #                                                                        :
echo :                                    #               @@@@@@@@@                           #                                                                         :
echo :                                    #                                                    ##                                       #####                           :
echo :                                    #     /\                                                #                                #####     #                          :
echo :                                   #      \/                                                #                               #           #                         :
echo :                                   #                                                        #                              #            #                         :
echo :                                   #                                                        #                              #         ###                          :
echo :                                    #                                                       #                               ##    ###                             :
echo :                                     ##                                           #########                                  ####                                 :
echo :                                       ####                                   #####                                                                               :
echo :                                           #                            #####                                                                                     :
echo :                                            #   ##                #####                                                                                           :
echo :                                            #  # #            ##                                                                                                  :
echo :                                            #  #   ###         #                                                                                                  :
echo :                                             ##      ##        #                                                                                                  :
echo :                                                       #        #                                                                                                 :
echo :                                                        ########                                                                                                  :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                            @@@                                                                                                   :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo : You can:                                                                                                                                                         :
echo :      1) Look at the portal behind Jerry.                                                                                                                         :
echo :                                                                                                                                                                  :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ 1 goto lookPortal
if %enter% equ cmds call ./scripts/commandsHelp.cmd
if %enter% equ commands call ./scripts/commandsHelp.cmd
if %enter% equ commandshelp call ./scripts/commandsHelp.cmd
if %enter% equ north goto teleportation
if %enter% equ save call ./scripts/save.cmd

:lookPortal
cls
echo /------------------------------------------------------------------------------------------------------------------------------------------------------------------\
echo : Your Island: Jerry's Island ]                                                                                                                                    :
echo :------------------------------                                                                                                                                    :
echo :                                                                  ############                                                                                    :
echo :                                                         #########            ######                                                                              :
echo :                                                  #######                           ##                                                                            :
echo :                                             #####                                    #                                                                           :
echo :                                         ####                                          #                                                                          :
echo :                                        #                                                #                                                                        :
echo :                                     ###          -------------                          #                                                                        :
echo :                                    #               @@@@@@@@@                           #                                                                         :
echo :                                    #                                                    ##                                       #####                           :
echo :                                    #     /\                                                #                                #####     #                          :
echo :                                   #      \/                                                #                               #           #                         :
echo :                                   #                                                        #                              #            #                         :
echo :                                   #                                                        #                              #         ###                          :
echo :                                    #                                                       #                               ##    ###                             :
echo :                                     ##                                           #########                                  ####                                 :
echo :                                       ####                                   #####                                                                               :
echo :                                           #                            #####                                                                                     :
echo :                                            #   ##                #####                                                                                           :
echo :                                            #  # #            ##                                                                                                  :
echo :                                            #  #   ###         #                                                                                                  :
echo :                                             ##      ##        #                                                                                                  :
echo :                                                       #        #                                                                                                 :
echo :                                                        ########                                                                                                  :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                           @@@                                                                                                    :
echo :                                                            @@@                                                                                                   :
echo :------------------------------------------------------------------------------------------------------------------------------------------------------------------:
echo :  You take a look at this weird stony ark that contains a flashy purple sort of matier.                                                                           :
echo :  You feel a bit of hotness by getting nearer of it, and the ark emitts a little sound, like a creak. You get a bit scared of this ark, and go farther of it.     :
echo :                                                                      Press 1 to continue...                                                                      :
echo \------------------------------------------------------------------------------------------------------------------------------------------------------------------/
echo.
set /p enter="> "
if %enter% equ 1 goto goesJerryIsland
goto lookPortal

:teleportation
cls
echo wip
pause
exit