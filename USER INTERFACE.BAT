@ echo off
TITLE USER INTERFACE
color 0b
cls
echo Hi.
ping localhost -n 1 >nul
cls
echo Hi. I 
ping localhost -n 1 >nul
cls
echo Hi. I am 
ping localhost -n 1 >nul
cls
echo Hi. I am your 
ping localhost -n 1 >nul
cls
echo Hi. I am your Computer. 
ping localhost -n 1 >nul
cls
echo Hi. I am your Computer.What's 
ping localhost -n 1 >nul
cls
echo Hi. I am your Computer.What's your name? 
ping localhost -n 1 >nul
set /p name=
ping localhost -n 2 >nul
cls
if %name%== krish18  goto makerk
if %name%== KRISH18  goto makerk
if %name%== puri  goto purik
if %name%== PURI  goto purik
if %name%== nEvErTrY  goto shivankg
if %name%== NeVeRtRy goto shivankg
goto startk
:startk
cls
echo So %name% 
ping localhost -n 2 >nul
cls
echo So %name% let the fun begin...
ping localhost -n 3 >nul
cls 
 goto menuK
:menuK
title User Interface
color 0b
cls
echo  Here are the list of things that you could do.
ping localhost -n 1 >nul
echo Enter the serial number to enjoy the thing.
ping localhost -n 1 >nul
echo 1.  Logout
echo 2.  Restart
echo 3.  Tic Tac Toe 
echo 4.  Simple Matrixx
echo 5.  Reversed Matrixx
echo 6.  Binary Matrixx
echo 7.  Guessing Number Game
echo 8.  Clock 
echo 9.  War Game
echo 10. 3-D Sphere Animation
echo 11. DEAL-NO DEAL 
echo 12. Exit
set /p fun=
if %fun%==1 goto logout
if %fun%==2 goto restart
if %fun%==3 goto ttt
if %fun%==4 goto matrixx
if %fun%==5 goto matrixx2
if %fun%==6 goto matrixx3
if %fun%==7 goto gng
if %fun%==8 goto clock
if %fun%==9 goto war
if %fun%==12 goto EXITk
if %fun%==puri goto password
if %fun%==PURI goto password
if %fun%==10 goto spherekt
if %fun%==11 goto dealerkt
pause
goto menuK
:logout
cls 
echo Logging out
ping localhost -n 1 >nul
shutdown -l
:restart
cls
echo Restarting
ping localhost -n 1 >nul
shutdown -r
:ttt
cls
@echo off
title ScrewTheLotOfYou's Tic Tac Toe
title Noughts and Crosses
setlocal enabledelayedexpansion
::~ ^^^ Stops all commands appearing on screen, sets the title and enables the use of ! for environment variable
:menu
cls
echo Main Menu
echo To Play A 1-Player Game, Enter 1
echo To Play A 2-Player Game, Enter 2
echo To Exit, Enter 3
set /p menu=
if not defined menu goto menu
if /i %menu% equ 1 (
set menu=
cls
goto 1p
)
if /i %menu% equ 2 (
set menu=
cls
goto 2p
)
if /i %menu% equ 3 (
goto end
)
set menu=
goto menu
::~ ^^ The menu system, gives all the options, allows the user to input a number using "set /p menu="
:~ If the user didn't enter a value, it 'goto's back to ask again.
::~ Checks the Menu variable, tests to see if it matches 1, 2 or 3, then 'goto's the appropriate place.
:1p
set turns=0
set x1=0
set x2=0
set x3=0
set x4=0
set x5=0

set x6=0

set x7=0

set x8=0

set x9=0

set o1=0

set o2=0

set o3=0

set o4=0

set o5=0

set o6=0

set o7=0

set o8=0

set o9=0




::~ Sets the number of turns taken so far to 0

::~ Sets all the places on the noughts and crosses grid to 0







set d1=1

set d2=2

set d3=3

set d4=4

set d5=5

set d6=6

set d7=7

set d8=8

set d9=9




::~ Sets the display characters for game to their appropriate number




set rnumber=%random%

set rnumber2=%rnumber%

set /a rnumber= %rnumber% / 2

set /a rnumber= %rnumber% * 2




::~ Sets a variable "rnumber" to a random number

::~ Sets a variable "rnumber2" to the same number as "rnumber"

::~ Divides "rnumber" by two, then multiplies by two.

::~ If the number was even, it would be equal to "rnumber2", if it was odd it would end up one less than "rnumber2"

::~ This is the method I use to create a 50% chance, as there's a 50% that a random number will be odd or even







if %rnumber%==%rnumber2% (

echo Crosses go first

echo You are noughts

pause>nul

set rnumber=

set rnumber2=

set go=1xgame

goto 1display

) else (

echo Noughts go first

echo You are noughts

pause>nul

set rnumber=

set rnumber2=

set go=1ogame

goto 1display

)




::~ This tests to see if the numbers are equal, then sets the "go" variable to whichever possibility came out and deletes the "rnumber" variables

::~ Then 'Goto's the display




:1display

cls

echo %d1% %d2% %d3%

echo %d4% %d5% %d6%

echo %d7% %d8% %d9%

if /i %turns% equ 9 (goto draw)

echo.

echo Your Turn

echo.

goto %go%




::~ ^^ Displays the current status of each place in the grid. At the start these will all just be numbers.

::~ Checks that the turns hasn't reach nine. If it has, all the spaces on the grid have been used up and nobody has won, so the game is a draw.




:1ogame

echo Choose the number of the space you'd like to choose

set guess=

set /p guess=

if not defined guess goto 1display

set guess=%guess:~0,1%

if /i not %guess% leq 9 goto 1display

if /i not %guess% gtr 0 goto 1display

if /i !d%guess%! neq %guess% goto 1display

goto 1o%guess%




::~ Asks the user to input the number of the space they want to choose and allows them to using "Set /p"

::~ If the user didn't input or entered something that wasn't a number between 1 and 9, it 'goto's back, to ask again

::~ Checks that the number hasn't been already chosen by checking that !d%guess%! is equal to guess. This works becauseif the user guesses 1, d1 should equal 1.

::~ If it has already been chosen, d1 would be a O or a X, so it would not be equal.

::~ 'Goto's the number chosen.




:1o1

set o1=1

set x1=1000

set d1=O

goto 1oprocess

:1o2

set o2=10

set x2=1000

set d2=O

goto 1oprocess

:1o3

set o3=100

set x3=1000

set d3=O

goto 1oprocess

:1o4

set o4=1

set x4=1000

set d4=O

goto 1oprocess

:1o5

set o5=10

set x5=1000

set d5=O

goto 1oprocess

:1o6

set o6=100

set x6=1000

set d6=O

goto 1oprocess

:1o7

set o7=1

set x7=1000

set d7=O

goto 1oprocess

:1o8

set o8=10

set x8=1000

set d8=O

goto 1oprocess

:1o9

set o9=100

set x9=1000

set d9=O

goto 1oprocess




::~ The space of the number chosen on the display grid is changed to the correct letter (X or O) and a number is added to the %x-% grid and the %o-% grid.

::~ These two grids are used to work out whether someone has won, and allows the computer to work out which place to go next.










:1oprocess

set /a line1= %o1% + %o2% + %o3%

if /i %line1% equ 111 (goto owin)




set /a line2= %o4% + %o5% + %o6%

if /i %line2% equ 111 (goto owin)




set /a line3= %o7% + %o8% + %o9%

if /i %line3% equ 111 (goto owin)




set /a line4= %o1% + %o5% + %o9%

if /i %line4% equ 111 (goto owin)




set /a line5= %o3% + %o5% + %o7%

if /i %line5% equ 111 (goto owin)




set /a line6= %o1% + %o4% + %o7%

if /i %line6% equ 3 (goto owin)




set /a line7= %o2% + %o5% + %o8%

if /i %line7% equ 30 (goto owin)




set /a line8= %o3% + %o6% + %o9%

if /i %line8% equ 300 (goto owin)




::~ This section of code adds up all of the possible winning combinations on the %o-% grid i.e. each row, column and diagional, to check if the player has got three Os in a row. If so 'goto's the owin section.




set go=1xgame

set guess=

set /a turns= %turns% + 1

goto 1display




::~ Sets the go to the computer's and adds one to the number of turns taken

::~ 'Goto's the display.



















:1xgame




set /a line1= %x1% + %x2% + %x3%

if /i %line1% equ 11 (

set guess=3

goto 1ac

)




set /a line1= %x1% + %x2% + %x3%

if /i %line1% equ 101 (

set guess=2

goto 1ac

)




set /a line1= %x1% + %x2% + %x3%

if /i %line1% equ 110 (

set guess=1

goto 1ac

)







set /a line1= %x4% + %x5% + %x6%

if /i %line1% equ 11 (

set guess=6

goto 1ac

)




set /a line1= %x4% + %x5% + %x6%

if /i %line1% equ 101 (

set guess=5

goto 1ac

)




set /a line1= %x4% + %x5% + %x6%

if /i %line1% equ 110 (

set guess=4

goto 1ac

)




set /a line1= %x7% + %x8% + %x9%

if /i %line1% equ 11 (

set guess=9

goto 1ac

)




set /a line1= %x7% + %x8% + %x9%

if /i %line1% equ 101 (

set guess=8

goto 1ac

)




set /a line1= %x7% + %x8% + %x9%

if /i %line1% equ 110 (

set guess=7

goto 1ac

)




set /a line1= %x1% + %x5% + %x9%

if /i %line1% equ 11 (

set guess=9

goto 1ac

)




set /a line1= %x1% + %x5% + %x9%

if /i %line1% equ 101 (

set guess=5

goto 1ac

)




set /a line1= %x1% + %x5% + %x9%

if /i %line1% equ 110 (

set guess=1

goto 1ac

)




set /a line1= %x3% + %x5% + %x7%

if /i %line1% equ 11 (

set guess=3

goto 1ac

)




set /a line1= %x3% + %x5% + %x7%

if /i %line1% equ 101 (

set guess=5

goto 1ac

)




set /a line1= %x3% + %x5% + %x7%

if /i %line1% equ 110 (

set guess=7

goto 1ac

)




set /a line1= %x1% + %x4% + %x7%

if /i %line1% equ 2 (

if /i %d1% equ 1 (

set guess=1

goto 1ac

)

if /i %d4% equ 4 (

set guess=4

goto 1ac

)

if /i %d7% equ 7 (

set guess=7

goto 1ac

)

)




set /a line1= %x2% + %x5% + %x8%

if /i %line1% equ 20 (

if /i %d2% equ 2 (

set guess=2

goto 1ac

)

if /i %d5% equ 5 (

set guess=5

goto 1ac

)

if /i %d8% equ 8 (

set guess=8

goto 1ac

)

)




set /a line1= %x3% + %x6% + %x9%

if /i %line1% equ 200 (

if /i %d3% equ 3 (

set guess=3

goto 1ac

)

if /i %d6% equ 6 (

set guess=6

goto 1ac

)

if /i %d9% equ 9 (

set guess=9

goto 1ac

)

)







::~ ^^^ These sections add up all the %x-% grid and checks to see if there is a way the computer can win this turn.

::~  If so, it sets the guess to the correct number and 'goto's the 1ac section.



















set /a line1= %o1% + %o2% + %o3%

if /i %line1% equ 11 (

set guess=3

goto 1ac

)




set /a line1= %o1% + %o2% + %o3%

if /i %line1% equ 101 (

set guess=2

goto 1ac

)




set /a line1= %o1% + %o2% + %o3%

if /i %line1% equ 110 (

set guess=1

goto 1ac

)







set /a line1= %o4% + %o5% + %o6%

if /i %line1% equ 11 (

set guess=6

goto 1ac

)




set /a line1= %o4% + %o5% + %o6%

if /i %line1% equ 101 (

set guess=5

goto 1ac

)




set /a line1= %o4% + %o5% + %o6%

if /i %line1% equ 110 (

set guess=4

goto 1ac

)




set /a line1= %o7% + %o8% + %o9%

if /i %line1% equ 11 (

set guess=9

goto 1ac

)




set /a line1= %o7% + %o8% + %o9%

if /i %line1% equ 101 (

set guess=8

goto 1ac

)




set /a line1= %o7% + %o8% + %o9%

if /i %line1% equ 110 (

set guess=7

goto 1ac

)




set /a line1= %o1% + %o5% + %o9%

if /i %line1% equ 11 (

set guess=9

goto 1ac

)




set /a line1= %o1% + %o5% + %o9%

if /i %line1% equ 101 (

set guess=5

goto 1ac

)




set /a line1= %o1% + %o5% + %o9%

if /i %line1% equ 110 (

set guess=1

goto 1ac

)




set /a line1= %o3% + %o5% + %o7%

if /i %line1% equ 11 (

set guess=3

goto 1ac

)




set /a line1= %o3% + %o5% + %o7%

if /i %line1% equ 101 (

set guess=5

goto 1ac

)




set /a line1= %o3% + %o5% + %o7%

if /i %line1% equ 110 (

set guess=7

goto 1ac

)




set /a line1= %o1% + %o4% + %o7%

if /i %line1% equ 2 (

if /i %d1% equ 1 (

set guess=1

goto 1ac

)

if /i %d4% equ 4 (

set guess=4

goto 1ac

)

if /i %d7% equ 7 (

set guess=7

goto 1ac

)

)




set /a line1= %o2% + %o5% + %o8%

if /i %line1% equ 20 (

if /i %d2% equ 2 (

set guess=2

goto 1ac

)

if /i %d5% equ 5 (

set guess=5

goto 1ac

)

if /i %d8% equ 8 (

set guess=8

goto 1ac

)

)




set /a line1= %o3% + %o6% + %o9%

if /i %line1% equ 200 (

if /i %d3% equ 3 (

set guess=3

goto 1ac

)

if /i %d6% equ 6 (

set guess=6

goto 1ac

)

if /i %d9% equ 9 (

set guess=9

goto 1ac

)

)







::~ This section checks that there is no way the noughts can win next turn by adding up the %o-% grid. If so it sets the guess to the right number and 'goto's 1ac.




set guess=%time:~9,1%




::~ If there is no way that the computer OR the player can win next turn, the computer chooses a random number as its guess. The random number I use is the millisecond digit of the clock.




:1ac

if /i %guess% equ 0 goto 1display

echo !d%guess%!

if /i NOT !d%guess%!==%guess% goto 1display

goto 1x%guess%




::~ Checks that the place hasn't already been taken (as explained above) and 'goto's the corresponding place below.




:1x1

set x1=1

set o1=1000

set d1=X

goto 1xprocess

:1x2

set x2=10

set o2=1000

set d2=X

goto 1xprocess

:1x3

set x3=100

set o3=1000

set d3=X

goto 1xprocess

:1x4

set x4=1

set o4=1000

set d4=X

goto 1xprocess

:1x5

set x5=10

set o5=1000

set d5=X

goto 1xprocess

:1x6

set x6=100

set o6=1000

set d6=X

goto 1xprocess

:1x7

set x7=1

set o7=1000

set d7=X

goto 1xprocess

:1x8

set x8=10

set o8=1000

set d8=X

goto 1xprocess

:1x9

set x9=100

set o9=1000

set d9=X

goto 1xprocess










::~ This section, as for the noughts, changes the display character of the chosen place, and adds numbers to the %x-% grid.




:1xprocess

set /a line1= %x1% + %x2% + %x3%

if /i %line1% equ 111 (goto xwin)




set /a line2= %x4% + %x5% + %x6%

if /i %line2% equ 111 (goto xwin)




set /a line3= %x7% + %x8% + %x9%

if /i %line3% equ 111 (goto xwin)




set /a line4= %x1% + %x5% + %x9%

if /i %line4% equ 111 (goto xwin)




set /a line5= %x3% + %x5% + %x7%

if /i %line5% equ 111 (goto xwin)




set /a line6= %x1% + %x4% + %x7%

if /i %line6% equ 3 (goto xwin)




set /a line7= %x2% + %x5% + %x8%

if /i %line7% equ 30 (goto xwin)




set /a line8= %x3% + %x6% + %x9%

if /i %line8% equ 300 (goto xwin)




set go=1ogame

set /a turns= %turns% + 1

goto 1display




::~  Sets the turn to the player, increases the turns variable by one. 'Goto's the display.


































::#######################################################



















::~ Two player is exactly the same as one player, apart from the computer is replaced by a second player, the code is otherwise identical and does not need explaining again.







:2p
set turns=0
set x1=0
set x2=0
set x3=0
set x4=0
set x5=0
set x6=0
set x7=0
set x8=0
set x9=0
set o1=0
set o2=0
set o3=0
set o4=0
set o5=0
set o6=0
set o7=0
set o8=0
set o9=0
set d1=1
set d2=2
set d3=3
set d4=4
set d5=5
set d6=6
set d7=7
set d8=8
set d9=9
set rnumber=%random%
set rnumber2=rnumber
set /a rnumber= %rnumber% / 2
set /a rnumber= %rnumber% * 2
if %rnumber%==%rnumber2% (

echo Crosses go first

pause>nul

set rnumber=

set rnumber2=

set go=2xgame

goto 2display
) else (
echo Noughts go first
pause>nul
set rnumber=
set rnumber2=
set go=2ogame
goto 2display
)
:2display
cls
echo %d1% %d2% %d3%
echo %d4% %d5% %d6%
echo %d7% %d8% %d9%
if /i %turns% equ 9 (goto draw)
echo.
if /i "%go%"=="2ogame" (
echo Nought's Turn
) ELSE (
echo Cross's Turn
)
echo.

goto %go%




:2ogame

echo Choose the number of the space you'd like to choose

set guess=

set /p guess=

if not defined guess goto 2display

set guess=%guess:~0,1%

if /i not %guess% leq 9 goto 2display

if /i not %guess% gtr 0 goto 2display

if /i !d%guess%! neq %guess% goto 2display

goto 2o%guess%







:2o1

set o1=1

set d1=O

goto 2oprocess

:2o2

set o2=10

set d2=O

goto 2oprocess

:2o3

set o3=100

set d3=O

goto 2oprocess

:2o4
set o4=1
set d4=O
goto 2oprocess
:2o5

set o5=10

set d5=O

goto 2oprocess

:2o6

set o6=100

set d6=O

goto 2oprocess

:2o7

set o7=1

set d7=O

goto 2oprocess

:2o8

set o8=10

set d8=O

goto 2oprocess

:2o9

set o9=100

set d9=O

goto 2oprocess




:2oprocess

set /a line1= %o1% + %o2% + %o3%

if /i %line1% equ 111 (goto owin)




set /a line2= %o4% + %o5% + %o6%

if /i %line2% equ 111 (goto owin)




set /a line3= %o7% + %o8% + %o9%

if /i %line3% equ 111 (goto owin)




set /a line4= %o1% + %o5% + %o9%

if /i %line4% equ 111 (goto owin)




set /a line5= %o3% + %o5% + %o7%

if /i %line5% equ 111 (goto owin)




set /a line6= %o1% + %o4% + %o7%

if /i %line6% equ 3 (goto owin)




set /a line7= %o2% + %o5% + %o8%

if /i %line7% equ 30 (goto owin)




set /a line8= %o3% + %o6% + %o9%

if /i %line8% equ 300 (goto owin)




set go=2xgame

set guess=

set /a turns= %turns% + 1

goto 2display

























:2xgame

echo Choose the number of the space you'd like to choose

set guess=

set /p guess=

if not defined guess goto 2display

set guess=%guess:~0,1%

if /i not %guess% leq 9 goto 2display

if /i not %guess% gtr 0 goto 2display

if /i !d%guess%! neq %guess% goto 2display

goto 2x%guess%
:2x1
set x1=1
set d1=X
goto 2xprocess
:2x2
set x2=10
set d2=X
goto 2xprocess
:2x3
set x3=100
set d3=X
goto 2xprocess
:2x4
set x4=1
set d4=X
goto 2xprocess
:2x5
set x5=10
set d5=X
goto 2xprocess
:2x6
set x6=100
set d6=X
goto 2xprocess
:2x7
set x7=1
set d7=X
goto 2xprocess
:2x8
set x8=10
set d8=X
goto 2xprocess
:2x9
set x9=100
set d9=X
goto 2xprocess
:2xprocess
set /a line1= %x1% + %x2% + %x3%
if /i %line1% equ 111 (goto xwin)
set /a line2= %x4% + %x5% + %x6%
if /i %line2% equ 111 (goto xwin)
set /a line3= %x7% + %x8% + %x9%
if /i %line3% equ 111 (goto xwin)
set /a line4= %x1% + %x5% + %x9%
if /i %line4% equ 111 (goto xwin)
set /a line5= %x3% + %x5% + %x7%
if /i %line5% equ 111 (goto xwin)
set /a line6= %x1% + %x4% + %x7%
if /i %line6% equ 3 (goto xwin)
set /a line7= %x2% + %x5% + %x8%
if /i %line7% equ 30 (goto xwin)
set /a line8= %x3% + %x6% + %x9%
if /i %line8% equ 300 (goto xwin)
set go=2ogame
set /a turns= %turns% + 1
goto 2display
:draw
echo.
Echo It's A Draw!
pause>nul
goto menu
:owin
cls
echo %d1% %d2% %d3%
echo %d4% %d5% %d6%
echo %d7% %d8% %d9%
Echo Noughts Win!
pause>nul
goto menu
:xwin
cls
echo %d1% %d2% %d3%
echo %d4% %d5% %d6%
echo %d7% %d8% %d9%
Echo Crosses Win!
Pause>nul
goto menu
:end
goto menuk
set d1=
set d2=
set d3=
set d4=
set d5=
set d6=
set d7=
set d8=
set d9=
set o1=
set o2=
set o3=
set o4=
set o5=
set o6=
set o7=
set o8=
set o9=
set x1=
set x2=
set x3=
set x4=
set x5=
set x6=
set x7=
set x8=
set x9=
set guess=
set turns=
set line1=
set line2=
set line3=
set line4=
set line5=
set line6=
set line7=
set line8=


TIC TAC TOE GAME.txt
Displaying TIC TAC TOE GAME.txt.
:clock
@mode con cons=35 lines=7
color 0a
:mainkt2
cls
echo Time:%time%
echo.
echo Date:%date%
echo.
ping -n 2 0.0.0.0>nul
goto mainkt2
echo Press enter to go back to menu 
pause
 goto menuk
:matrixx
cls
:startk123
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto startk123
:matrixx2
@echo off
cls
for /l %%i in (1,1,100) do echo.
:top1234567
color 0a
echo B%random% a%random% t%random% c%random% h%random% c%random% c%random% B%random% a%random% t%random% c%random%
ping 192.0.2.2 -n 1 -w 0 >nul
goto top1234567
:matrixx3
cls
:a123
    color 2
    echo 1 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1
    ping localhost -n 1 > nul
    echo 1 1 0 1 1 1 0 0 0 1 0 1 a f h 0 0 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 1 0
    echo 1 0 0 1 1 0 9 8 1 2 0 1 9 9 2 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1
    ping localhost -n 1 > nul
    echo 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 01 0 1 0 0 1 0
    ping localhost -n 1 > nul
    echo 1 0 1 1 1 0 1 1 0 9 1 1 2 1 1 0 9 1 0 5 7 7 8 7 8 1 3 2 1 2 1 2 3 2 1 3 4
    ping localhost -n 1 > nul
    echo 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 0 1 1 1 4 1 2 1 1 2 0 1 0 1 2 2 1 0 1 1 0 1
    goto a123
:GNG
:start
@echo off
cls
color 0a
title Guessing Game
set /a guessnum=0
set /a answer=%random%
echo.
echo Welcome to the Guessing Game!
echo.
echo Try and Guess the number.
echo -----------------------------------
echo.
:top
echo.
set /p guess=
echo.
if %guess% GTR %answer% echo Lower!
if %guess% LSS %answer% echo Higher!
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
goto top
:equal
echo Congratulations, you guessed right! It took you %guessnum% tries, but you did it!
echo.
echo Do you want to continue
set/p "cho=>"
if %cho%==Y goto start
if %cho%==y goto start
if %cho%==n goto exit
if %cho%==N goto exit
:exit
goto menuk
:WAR
@echo off
color 0c
title TOTAL WAR!!!
cls
echo.
echo Welcome to Total War
echo.
pause
:players
cls
set player=
set replay=
echo.
set /p player=Select 1 or 2 player mode:
if '%player%'=='1' goto name
if '%player%'=='2' goto p1name
goto players
:name
cls
set name=
echo.
set /p name=Please type in your name (One word):
if '%name%'=='' goto name
rem Easter Egg:
if '%name%'=='krish18' goto win
:country
cls
set country=
set enemy=
echo.
echo Welcome %name%!
echo.
set /p country=Choose your country; USA, Russia, or Canada:
if '%country%'=='usa' goto enemy1
if '%country%'=='USA' goto enemy1
if '%country%'=='Usa' goto enemy1
if '%country%'=='Russia' goto enemy2
if '%country%'=='russia' goto enemy2
if '%country%'=='canada' goto enemy3
if '%country%'=='Canada' goto enemy3
goto country
:enemy1
set country=USA
goto enemy
:enemy2
set country=Russia
goto enemy
:enemfy3
set country=Canada
:enemy
set /a cpucountryrand=%random% %%5 +1
if '%cpucountryrand%'=='0' goto enemy
if '%cpucountryrand%'=='1' set enemy=Russia
if '%cpucountryrand%'=='2' set enemy=USA
if '%cpucountryrand%'=='3' set enemy=Canada
if '%cpucountryrand%'=='4' goto enemy
if '%cpucountryrand%'=='5' goto enemy
if '%enemy%'=='%country%' goto enemy
:begin
set user=1000
set cpu=1000
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=1
set cpuairstrike=2
set cpumissiles=3
:gameplay
cls
set move=
set choice=
set cpucount=0
echo.
echo %name%, your turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %nuke%
echo.
echo 2. Fire Airstrike x %airstrike%
echo.
echo 3. Fire Missiles x %missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto nuke
if '%move%'=='2' goto airstrike
if '%move%'=='3' goto missiles
if '%move%'=='4' goto surrender
if '%move%'=='5' goto cpu1
if '%move%'=='krish' goto win
if '%move%'=='KRISH' goto win
goto gameplay
:nuke
cls
if '%nuke%'=='0' goto nonuke
echo.
echo %name% has fired a NUKE headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 400 DEF!
echo.
pause
set /a cpu=%cpu% - 400
set nuke=0
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nonuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto gameplay
:airstrike
cls
if '%airstrike%'=='0' goto noairstrike
echo.
echo %name% has fired an airstrike on the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 300 DEF!
echo.
pause
set /a cpu=%cpu% - 300
set /a airstrike=%airstrike% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noairstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto gameplay
:missiles
cls
if '%missiles%'=='0' goto nomissiles
echo.
echo %name% has fired multiple missiles headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 200 DEF!
echo.
pause
set /a cpu=%cpu% - 200
set /a missiles=%missiles% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nomissiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto gameplay
:surrender
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
pause
:end
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto end
goto players
:win
cls
echo.
echo You have won Total War!!!
echo.
pause
:win2
cls
echo.
echo You have won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto win2
goto players
:cpu1
cls
set /a cpucount=%cpucount% + 1
if '%cpucount%'=='10' goto cpu2
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:-
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:\
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
goto cpu1
:cpu2
cls
set /a choice=%random% %%6
if '%choice%'=='0' goto cpu2
if '%choice%'=='4' goto cpu2
if '%choice%'=='6' goto cpu2
if '%choice%'=='5' goto cpu2
echo.
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
echo Select your option:%choice%
ping localhost -n 4 >nul
if '%choice%'=='1' goto cpunuke
if '%choice%'=='2' goto cpuairstrike
if '%choice%'=='3' goto cpumissiles
:cpunuke
cls
if '%cpunuke%'=='0' goto nocpunuke
echo.
echo I have fired a NUKE headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 400 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 400
set cpunuke=0
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpunuke
echo.
echo I can't use a nuke since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuairstrike
cls
if '%cpuairstrike%'=='0' goto nocpuairstrike
echo.
echo I have fired an airstrike on the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 300 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 300
set /a cpuairstrike=%cpuairstrike% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuairstrike
echo.
echo I can't use an airstrike since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpumissiles
cls
if '%cpumissiles%'=='0' goto nocpumissiles
echo.
echo I have fired multiple missiles headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 200 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 200
set /a cpumissiles=%cpumissiles% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpumissiles
echo.
echo I can't use missiles since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuwin
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
pause
:cpuwin2
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto cpuwin2
goto players
:p1name
cls
set p1name=
echo.
set /p p1name=Player 1, please type in your name (One word):
if '%p1name%'=='' goto p1name
:p2name
cls
set p2name=
echo.
set /p p2name=Player 2, please type in your name (One word):
if '%p2name%'=='%p1name%' goto p2name
if '%p2name%'=='' goto p2name
rem Easter Egg:
if '%p1name%'=='krish18' goto p1win
if '%p2name%'=='krish18' goto p2win
:p1country
cls
set p1country=
echo.
echo Welcome %p1name%!
echo.
set /p p1country=Choose your country; USA, Russia, or Canada:
if '%p1country%'=='usa' goto p1country1
if '%p1country%'=='USA' goto p1country1
if '%p1country%'=='Usa' goto p1country1
if '%p1country%'=='Russia' goto p1country2
if '%p1country%'=='russia' goto p1country2
if '%p1country%'=='canada' goto p1country3
if '%p1country%'=='Canada' goto p1country3
goto p1country
:p1country1
set p1country=USA
goto p2country
:p1country2
set p1country=Russia
goto p2country
:p1country3
set p1country=Canada
:p2country
cls
set p2country=
echo.
echo Welcome %p2name%!
echo.
set /p p2country=Choose your country; USA, Russia, or Canada:
if '%p2country%'=='%p1country%' goto na
if '%p2country%'=='usa' goto p2country1
if '%p2country%'=='USA' goto p2country1
if '%p2country%'=='Usa' goto p2country1
if '%p2country%'=='Russia' goto p2country2
if '%p2country%'=='russia' goto p2country2
if '%p2country%'=='canada' goto p2country3
if '%p2country%'=='Canada' goto p2country3
goto p2country
:na
cls
echo.
echo You can't choose %p1country% because %p1name% has already chosen it.
pause >nul
goto p2country
:p2country1
set p2country=USA
goto begin2
:p2country2
set p2country=Russia
goto begin2
:p2country3
set p2country=Canada
:begin2
set p1health=1000
set p2health=1000
set p1nuke=1
set p1airstrike=2
set p1missiles=3
set p2nuke=1
set p2airstrike=2
set p2missiles=3
:p1gameplay
cls
set move=
set choice=
echo.
echo %p1name%, your turn.
echo                                                               %p1country%: %p1health% DEF
echo Options:
echo                                                               %p2country%: %p2health% DEF
echo 1. Fire NUKE x %p1nuke%
echo.
echo 2. Fire Airstrike x %p1airstrike%
echo.
echo 3. Fire Missiles x %p1missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p1nuke
if '%move%'=='2' goto p1airstrike
if '%move%'=='3' goto p1missiles
if '%move%'=='4' goto p1surrender
if '%move%'=='5' goto p2gameplay
if '%move%'=='krish' goto p1win
if '%move%'=='KRISH' goto p1win
goto p1gameplay
:p1nuke
cls
if '%p1nuke%'=='0' goto nop1nuke
echo.
echo %p1name% has fired a NUKE headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 400 DEF!
echo.
pause
set /a p2health=%p2health% - 400
set p1nuke=0
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p1gameplay
:p1airstrike
cls
if '%p1airstrike%'=='0' goto nop1airstrike
echo.
echo %p1name% has fired an airstrike on %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 300 DEF!
echo.
pause
set /a p2health=%p2health% - 300
set /a p1airstrike=%p1airstrike% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p1gameplay
:p1missiles
cls
if '%p1missiles%'=='0' goto nop1missiles
echo.
echo %p1name% has fired multiple missiles headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 200 DEF!
echo.
pause
set /a p2health=%p2health% - 200
set /a p1missiles=%p1missiles% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p1gameplay
:p1surrender
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p1surrender2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1surrender2
goto players
:p1win
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p1win2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1win2
goto players
:p2gameplay
cls
set move=
set choice=
echo.
echo %p2name%, your turn.
echo                                                               %p2country%: %p2health% DEF
echo Options:
echo                                                               %p1country%: %p1health% DEF
echo 1. Fire NUKE x %p2nuke%
echo.
echo 2. Fire Airstrike x %p2airstrike%
echo.
echo 3. Fire Missiles x %p2missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p2nuke
if '%move%'=='2' goto p2airstrike
if '%move%'=='3' goto p2missiles
if '%move%'=='4' goto p2surrender
if '%move%'=='5' goto p1gameplay
if '%move%'=='krish' goto p2win
if '%move%'=='KRISH' goto p2win
goto p2gameplay
:p2nuke
cls
if '%p2nuke%'=='0' goto nop2nuke
echo.
echo %p2name% has fired a NUKE headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 400 DEF!
echo.
pause
set /a p1health=%p1health% - 400
set p2nuke=0
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p2gameplay
:p2airstrike
cls
if '%p2airstrike%'=='0' goto nop2airstrike
echo.
echo %p2name% has fired an airstrike on %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 300 DEF!
echo.
pause
set /a p1health=%p1health% - 300
set /a p2airstrike=%p2airstrike% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p2gameplay
:p2missiles
cls
if '%p2missiles%'=='0' goto nop2missiles
echo.
echo %p2name% has fired multiple missiles headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 200 DEF!
echo.
pause
set /a p1health=%p1health% - 200
set /a p2missiles=%p2missiles% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p2gameplay
:p2surrender
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p2surrender2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2surrender2
goto players
:p2win
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p2win2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2win2
goto players
:suggest
cls
goto menuk
echo.
echo Before you leave, can you suggest a country I can add to the file?
echo.
set /p suggestion=Suggest a country here:
if '%suggestion%'=='' goto suggest
echo %suggestion% >> suggestions.txt
goto menuk
:EXITk
echo %name% >> Users.txt
exit
:makerk
cls
echo It is my pleasure that my maker is here.
ping localhost -n 4 >nul
set name=Krish
goto startk
:purik
cls
echo You can not call Ayush as puri.
ping localhost -n 3 >nul 
cls
echo You can not call Ayush as puri.Now enter your real name.
ping localhost -n 3 >nul
goto namek
:PASSWORD
cls
echo Enter password to continue or type (x) to exit
set /p pwk=
if %pwk% == x goto menuk
if %pwk% == X goto menuk
if %pwk% == KRISH18 goto AYUSHK
if %pwk% == krish18 goto AYUSHK
goto password
:AYUSHK
@echo off
title PURI
CLS
:kap
ECHO PURI PURI PURI PURI PURI PURI PURI PURI PURI PURI PURI PURI PURI 
echo.
ping localhost -n 1 >nul
GOTO kap
:shivankg
set name=Shivank
goto startk
:startk2
echo So %namek% 
ping localhost -n 2 >nul
cls
echo So %namek% let the fun begin...
ping localhost -n 4 >nul
cls 
 goto menuK
:spherekt
@echo off & setlocal & title Sphere 3D & set /a cols=62, lines=62 & goto :Init_system

    :: By einstein1969. Dedicated to jeb, dbenham, penpen, carlos, aGerman, Aacini, EdDyreen, 
    :: npocmaka_, Liviu, Sponge Belly, Magialisk, the users and the staff of Dostips forum.

  :: Use raster font 8x8. 

:Main

set /a ar=100, rt=0, ds=0, cx=cols/2, cz=4000, cY=lines/2

(
  set SIN=
  set _PLOT$_=
  set _$PLOT_=
  set _empty=
  set lines=
  set cols=

  for /L %%\ in (1000,-1,0) do (

   set /a "rt+=31416/60"
   
   if !ds! lss 1000 set /a ds+=10

   setlocal

   set /a "a=(15708-rt) %% 62832, c=(a>>31|1)*a"

   if !c! gtr 47124 (set /a "a=a-(a>>31|1)*62832, b=%SIN%, a=rt %% 62832, c=(a>>31|1)*a")  else (if !c! gtr 15708 (set /a "a=(a>>31|1)*31416-a, b=%SIN%, a=rt %% 62832, c=(a>>31|1)*a") else set /a "b=%SIN%, a=rt %% 62832, c=(a>>31|1)*a")
   if !c! gtr 47124 (set /a "a=a-(a>>31|1)*62832, a=%SIN%")  else (if !c! gtr 15708 (set /a "a=(a>>31|1)*31416-a, a=%SIN%") else set /a "a=%SIN%")

   for %%f in ("0 9999" "-5000 8661" "-8661 5000" "-9999 0" "-8661 -5000" "-5000 -8661" "0 -9999" "5000 -8661" "8661 -5000" "9999 0" "8661 5000" "5000 8661") do for /f "tokens=1,2" %%g in (%%f) do (

   for %%t in ("3827 9239" "7071 7071" "9239 3827" "9999 0" "9239 -3827" "7071 -7071" "3827 -9239") do for /f "tokens=1,2" %%u in (%%t) do (

     set /a "ax=ar*%%h/10000*%%u/10000, az=ar*%%g/10000*%%u/10000, ay=ar*%%v/10000, aax=(ax*b/10000-(ay*a/10000+az*b/10000)*a/10000)*b/10000-(ay*b/10000-az*a/10000)*a/10000, aay=(ax*b/10000-(ay*a/10000+az*b/10000)*a/10000)*a/10000+(ay*b/10000-az*a/10000)*b/10000, e=ax*a/10000+(ay*a/10000+az*b/10000)*b/10000, c=ds*aax/(e-cz)+cx, d=ds*aay/(e-cz)+cy"   

     if not defined L!d! set L!d!=%_empty%
   
     if !e! lss 0 (%_$PLOT_% !c! !d! 1 %_PLOT$_%) else %_$PLOT_% !c! !d! 4 %_PLOT$_%

    )   
   )

   if not "!OT!"=="!time:~-1!" (
     cls & (For /L %%l in (1,1,%lines%) do if not defined L%%l (echo() else echo( !L%%l!)>CON
     if "!OT!"=="0" title Sphere 3D [%%\]
     endlocal
     set OT=!time:~-1!
   ) else endlocal

  )
)
goto :eof

:Init_system

  setlocal DisableDelayedExpansion

  set /a cc=cols+2, ll=lines+2
(  
  mode %cc%,%ll% & cls
  for /F "Tokens=1 delims==" %%v in ('set') do set "%%v="
  set /a cols=%cols%, lines=%lines%
)
  set "_$PLOT_=For /F usebackq^ tokens^=1-3 %%x in ('"
  set "_PLOT$_=') do set /a f=%%x+1 & For %%w in (!f!) do set L%%y=!L%%y:~0,%%x!!g:~%%z,1!!L%%y:~%%w!"

  set "SIN=(a-a*a/1920*a/312500+a*a/1920*a/15625*a/15625*a/2560000-a*a/1875*a/15360*a/15625*a/15625*a/16000*a/44800000)"

  setlocal EnableDelayedExpansion

  For /L %%l in (1,1,%cols%) do set "_empty=!_empty! "

  set g= .±²@"

Goto :Main
:dealerkt
@echo off
echo Loading...
setlocal enabledelayedexpansion
set dealdone=0
set Spaces=                                           

for /l %%I in (1,1,22) do set gapline%%I= ___________ 

set amount1=1
set amount2=10
set amount3=50
set amount4=100
set amount5=500
set amount6=1000
set amount7=5000
set amount8=10000
set amount9=25000
set amount10=50000
set amount11=75000
set amount12=100000
set amount13=300000
set amount14=500000
set amount15=1000000
set amount16=1500000
set amount17=2000000
set amount18=3500000
set amount19=5000000
set amount20=7500000
set amount21=10000000
set amount22=25000000



set famount1=$0.01
set famount2=$0.1
set famount3=$0.50
set famount4=$1
set famount5=$5
set famount6=$10
set famount7=$50
set famount8=$100
set famount9=$250
set famount10=$500
set famount11=$750
set famount12=$1,000
set famount13=$3,000
set famount14=$5,000
set famount15=$10,000
set famount16=$15,000
set famount17=$20,000
set famount18=$35,000
set famount19=$50,000
set famount20=$75,000
set famount21=$100,000
set famount22=$250,000




set Damount1={___$0.01___}
set Damount2={____$0.1___}
set Damount3={____$0.5___}
set Damount4={_____$1____}
set Damount5={_____$5____}
set Damount6={____$10____}
set Damount7={____$50____}
set Damount8={____$100___}
set Damount9={____$250___}
set Damount10={____$500___}
set Damount11={____$750___}
set Damount12={___$1000___}
set Damount13={___$3000___}
set Damount14={___$5000___}
set Damount15={___$10000__}
set Damount16={___$15000__}
set Damount17={___$20000__}
set Damount18={___$35000__}
set Damount19={___$50000__}
set Damount20={___$75000__}
set Damount21={__$100000__}
set Damount22={__$250000__}




for /l %%I in (1,1,22) do set boxtop%%I= _____ 
for /l %%I in (1,1,22) do set boxlid%%I=[_____]
for /l %%I in (1,1,9) do set boxmid%%I=[  %%I  ]
for /l %%I in (10,1,22) do set boxmid%%I=[ %%I  ]
for /l %%I in (1,1,22) do set boxbot%%I=[_____]

for /l %%I in (23,1,24) do set boxtop%%I=       
for /l %%I in (23,1,24) do set boxlid%%I=       
for /l %%I in (23,1,24) do set boxmid%%I=       
for /l %%I in (23,1,24) do set boxbot%%I=       

for /l %%I in (1,4,24) do (
set /a box2number= %%I + 1
set /a box3number= %%I + 2
set /a box4number= %%I + 3
set DisplayLine%%I=#boxtop%%I##boxtop!box2number!##boxtop!box3number!##boxtop!box4number!#
)

for /l %%I in (2,4,24) do (
set /a boxnumber= %%I - 1
set /a box2number= !boxnumber! + 1
set /a box3number= !boxnumber! + 2
set /a box4number= !boxnumber! + 3
set DisplayLine%%I=#boxlid!boxnumber!##boxlid!box2number!##boxlid!box3number!##boxlid!box4number!#
)

for /l %%I in (3,4,24) do (
set /a boxnumber= %%I - 2
set /a box2number= !boxnumber! + 1
set /a box3number= !boxnumber! + 2
set /a box4number= !boxnumber! + 3
set DisplayLine%%I=#boxmid!boxnumber!##boxmid!box2number!##boxmid!box3number!##boxmid!box4number!#
)

for /l %%I in (4,4,24) do (
set /a boxnumber= %%I - 3
set /a box2number= !boxnumber! + 1
set /a box3number= !boxnumber! + 2
set /a box4number= !boxnumber! + 3
set DisplayLine%%I=#boxbot!boxnumber!##boxbot!box2number!##boxbot!box3number!##boxbot!box4number!#
)

set amountnumber1=0
set amountnumber2=11
for /l %%I in (1,2,22) do set /a AmountNumber1= !amountnumber1! + 1 && set /a Amountnumber2= !amountnumber2! + 1 && for /l %%J in (!Amountnumber1!,1,!Amountnumber1!) do for /l %%K in (!Amountnumber2!,1,!Amountnumber2!) do (
set Displayline%%I=#gapline%%J#            !Displayline%%I!            #gapline%%K#
)

set amountnumber1=0
set amountnumber2=11

for /l %%I in (2,2,22) do set /a AmountNumber1= !amountnumber1! + 1 && set /a Amountnumber2= !amountnumber2! + 1 && for /l %%J in (!Amountnumber1!,1,!Amountnumber1!) do for /l %%K in (!Amountnumber2!,1,!Amountnumber2!) do (
set Displayline%%I=#Damount%%J#            !Displayline%%I!            #Damount%%K#
)

for /l %%I in (23,1,24) do set displayline%%I=                         !Displayline%%I!                         

set amountsleft=
for /l %%I in (1,1,22) do set AmountsLeft=!Amountsleft!%%I,


set Amountnumber=1

:RandomNumber

set minval=1

set maxval=22

:NumberGenerator
set /a RandomNumber= %random% / 1489
set /a RandomNumber= %RandomNumber% + %MinVal%
if /i %RandomNumber% GTR %Maxval% goto NumberGenerator

if not defined box%randomnumber% (
set box%randomnumber%=%amountnumber%
set /a Amountnumber= !Amountnumber! + 1
if /i !amountnumber!==23 goto intro
)
goto Randomnumber


:intro
cls
echo Let's Play...
echo.
echo.
echo          ############################################
echo          #                                          #
echo          #   @@   @@@@   @   @            @   @@@   #
echo          #   @ @  @     @ @  @           @ @  @  @  #
echo          #   @  @ @    @   @ @          @   @ @     #
echo          #   @  @ @@@  @@@@@ @          @   @ @     #
echo          #   @ @  @    @   @ @           @ @  @     #
echo          #   @@   @@@@ @   @ @@@@         @   @     #
echo          #                                          #
echo          #   @  @   @         @@   @@@@   @   @     #
echo          #   @@ @  @ @        @ @  @     @ @  @     #
echo          #   @@ @ @   @       @  @ @    @   @ @     #
echo          #   @ @@ @   @       @  @ @@@@ @@@@@ @     #
echo          #   @ @@  @ @        @ @  @    @   @ @     #
echo          #   @  @   @         @@   @@@@ @   @ @@@@  #
echo          #                                          #
echo          ############################################
echo.
echo I do not own the "Deal Or No Deal" format or concept. All copyrights
echo and trademarks are property of their respective owners.
echo.
set /p helpyn="Press enter to continue, or type HELP for instructions.
if /i "%HelpYN%"=="HELP" (
cls
echo The aim of the game is to get as much money as possible for your box.
echo The game concept is simple. There are 22 sums of money inside 22 boxes.
echo The player must choose a box to keep, then remove the others from play,
echo one by one not knowing what sum is inside each box.
echo.
echo After a certain number of choices, The Banker will phone. He will make
echo you an offer to buy your box off you. You may choose to accept this offer,
echo or keep removing money. Removing high sums makes lower offers and vice-
echo versa.
echo.
echo If you play until there are only two boxes left, you have the choice to
echo open the box you started with, or switch to the other box. You win the
echo money in the box.
echo.
echo The knack to the game is knowing whether to take the deal or stop removing
echo money from the game.
pause
)
cls


:ChooseBox
call :display
set /p OwnBox="Choose your own box to keep:    "
if not defined Ownbox goto Choosebox
if /i not %ownbox%0 leq 220 goto ChooseBox
if /i not %ownbox%0 geq 10 goto ChooseBox

set boxtop%ownbox%=       
set boxlid%ownbox%=       
set boxmid%ownbox%=       
set boxbot%ownbox%=       


set BoxesLeft=22

Set turns=5

set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

goto SwapOrNot


:gameLoop
cls
call :display
set boxtoremove=

:OpenBox
set /p BoxToRemove="%BoxMessage%"
if not defined BoxToRemove goto OpenBox
if /i not %BoxToRemove%0 leq 220 goto OpenBox
if /i not %BoxToRemove%0 geq 10 goto openBox
if /i %BoxToRemove%==%OwnBox% goto OpenBox
if /i "!Box%boxtoremove%!"=="DONE" goto OpenBox

call :removebox %boxtoremove%
set /a BoxesLeft=%BoxesLeft% - 1
set /a Turns= %Turns% - 1

if /i %turns%==0 (
cls
call :display
set /p asdfghj="You lost amount %Amountinbox%. The Phone is ringing, press enter to answer it."
set asdfghj=
call :MakeOffer
exit /b
)

set boxmessage=You lost amount %Amountinbox%. Choose the box you want to open.       

Goto GameLoop






:RemoveBox
set boxtop%1=       
set boxlid%1%=       
set boxmid%1=       
set boxbot%1=       

set AmountInBox=!Box%1!

call :Remove_Amounts %AmountInBox%
set Box%1=DONE
exit /b

:Remove_Amounts
set damount%1=             
set gapline%1=             

for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 delims=," %%A in ("%AmountsLeft%") do (
set amountsleft=
if /i not %%A==%1 set AmountsLeft=%%A,
if /i not %%B==%1 set AmountsLeft=!AmountsLeft!%%B,
if /i not %%C==%1 set AmountsLeft=!AmountsLeft!%%C,
if /i not %%D==%1 set AmountsLeft=!AmountsLeft!%%D,
if /i not %%E==%1 set AmountsLeft=!AmountsLeft!%%E,
if /i not %%F==%1 set AmountsLeft=!AmountsLeft!%%F,
if /i not %%G==%1 set AmountsLeft=!AmountsLeft!%%G,
if /i not %%H==%1 set AmountsLeft=!AmountsLeft!%%H,
if /i not %%I==%1 set AmountsLeft=!AmountsLeft!%%I,
if /i not %%J==%1 set AmountsLeft=!AmountsLeft!%%J,
if /i not %%K==%1 set AmountsLeft=!AmountsLeft!%%K,
if /i not %%L==%1 set AmountsLeft=!AmountsLeft!%%L,
if /i not %%M==%1 set AmountsLeft=!AmountsLeft!%%M,
if /i not %%N==%1 set AmountsLeft=!AmountsLeft!%%N,
if /i not %%O==%1 set AmountsLeft=!AmountsLeft!%%O,
if /i not %%P==%1 set AmountsLeft=!AmountsLeft!%%P,
if /i not %%Q==%1 set AmountsLeft=!AmountsLeft!%%Q,
if /i not %%R==%1 set AmountsLeft=!AmountsLeft!%%R,
if /i not %%S==%1 set AmountsLeft=!AmountsLeft!%%S,
if /i not %%T==%1 set AmountsLeft=!AmountsLeft!%%T,
if /i not %%U==%1 set AmountsLeft=!AmountsLeft!%%U,
if /i not %%V==%1 set AmountsLeft=!AmountsLeft!%%V,
)

set amountinbox=!FAmount%1!
exit /b









:MakeOffer
set amount=0
for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 delims=," %%A in ("%AmountsLeft%") do (
set /a Offer= !Amount%%A! + !Amount%%B! + !Amount%%C! + !Amount%%D! + !Amount%%E! + !Amount%%F! + !Amount%%G! + !Amount%%H! + !Amount%%I! + !Amount%%J! + !Amount%%K! + !Amount%%L! + !Amount%%M! + !Amount%%N! + !Amount%%O! + !Amount%%P! + !Amount%%Q! + !Amount%%R! + !Amount%%S! + !Amount%%T! + !Amount%%U! + !Amount%%V! + 0
)
set /a Offer= (%Offer%/((%BoxesLeft%*999)/500))/100


cls
echo.
echo               ####################################       
echo              ##                                  ##      
echo             ##    ############################    ##    
echo              ######     ##            ##     ######       
echo                      ######################        
echo                      #######        #######      
echo                      #####            #####       
echo                      ####              ####     
echo                      ####              ####   
echo                      #####            #####   
echo                     #######          #######
echo                    ##########################
echo                   ############################         
echo                  ##############################           
echo                 ################################          
echo.
echo.
echo                   The Banker Offers: $%Offer%
echo.
echo.
echo                        DEAL OR NO DEAL?
:DealOrNoDeal
set deal=
set /p Deal="       "
if not defined Deal goto DealOrNoDeal
if /i %Deal:~0,1%==d echo.&& Goto Deal_Taken
if /i %Deal:~0,1%==N (exit /b) else (goto :DealOrNoDeal)









:Display


echo/ %displayline1:#=!%
echo/ %displayline2:#=!%
echo/ %displayline3:#=!%
echo/ %displayline4:#=!%
echo/ %displayline5:#=!%
echo/ %displayline6:#=!%
echo/ %displayline7:#=!%
echo/ %displayline8:#=!%
echo/ %displayline9:#=!%
echo/ %displayline10:#=!%
echo/ %displayline11:#=!%
echo/ %displayline12:#=!%
echo/ %displayline13:#=!%
echo/ %displayline14:#=!%
echo/ %displayline15:#=!%
echo/ %displayline16:#=!%
echo/ %displayline17:#=!%
echo/ %displayline18:#=!%
echo/ %displayline19:#=!%
echo/ %displayline20:#=!%
echo/ %displayline21:#=!%
echo/ %displayline22:#=!%
echo/ %displayline23:#=!%
echo/ %displayline24:#=!%

exit /b



:SwapOrNot
cls
echo.
echo               ####################################    
echo              ##                                  ##   
echo             ##    ############################    ##   
echo              ######     ##            ##     ###### 
echo                      ######################        
echo                      #######        #######         
echo                      #####            #####     
echo                      ####              ####  
echo                      ####              ####   
echo                      #####            #####      
echo                     #######          #######
echo                    ##########################
echo                   ############################           
echo                  ##############################       
echo                 ################################       
echo.
echo.
echo                The Banker Has Offered You The Swap
echo.
echo.
echo                        SWAP OR NO SWAP?

:SwapOrNoSwap
set swap=
set /p Swap="       "
if not defined Swap goto SwapOrNoSwap
if /i %Swap:~0,1%==S echo.&& goto Swap_Taken
if /i %Swap:~0,1%==N (echo.&& goto Swap_Not_Taken) else (goto SwapOrNoSwap)




:Swap_Not_Taken
for /f "tokens=1,2 delims=," %%I in ("%AmountsLeft%") do if /i "%%I"=="!Box%OwnBox%!" (set Offer=!Amount%%I!& set OtherBox=%%J& Set OwnBox=%%I) else (set offer=!Amount%%J!& set OtherBox=%%I&& Set OwnBox=%%J)
if /i %offer% lss 100 set offer=0.%offer%&& goto SwapResult
set /a offer= %offer% / 100
if /i %Offer% geq 35000 call :bigWin
goto SwapResult






:Swap_Taken
for /f "tokens=1,2 delims=," %%I in ("%AmountsLeft%") do if /i "%%I"=="!Box%OwnBox%!" (set Offer=!Amount%%J!& set OtherBox=%%I& Set OwnBox=%%J) else (set offer=!Amount%%I!& set OtherBox=%%J& Set OwnBox=%%I)
if /i %offer% lss 100 set offer=0.%offer%&& goto SwapResult
set /a offer= %offer% / 100
if /i %Offer% geq 35000 call :bigWin






:SwapResult
if /i %OwnBox% gtr %Otherbox% (
Echo You took the chance and won :D Well done
) else (
echo Hard luck, you got the smaller prize.
)
echo You won $%Offer% :)
pause>nul
goto endofgame






:Deal_Taken

set dealdone=1

if /i %Offer% geq 35000 call :bigWin

if /i %offer% lss 100 (
set Newoffer=0.%offer%
) else (
set Newoffer=%offer%
)


set temp=!Box%ownbox%!

if /i !Amount%temp%! lss 100 (
set Newtemp=0.!Amount%temp%!
) Else (
set /a Newtemp= !Amount%temp%! / 100
)

if /i %newtemp:.=% gtr %offer% (
echo Hard luck, in your box there was $%newtemp%, but you dealed at $%Newoffer%
)

if /i %newtemp:.=% lss %offer% (
echo Well done, you beat the banker :D
echo Your box was worth $%newtemp% but you sold it for $%NewOffer%
)

if /i %newtemp:.=% equ %offer% (
echo You managed to sell your box for exactly what it was worth, well done :D
echo You won $%NewOffer% :)
)
pause >nul
pause
goto EndOfGame











:BigWin
cls
echo #######################################################
echo #                                                     #
echo #                                                     #
echo #   @       @   @   @   @   @   @   @@@@   @@@@   @   #
echo #   @       @   @   @@  @   @@  @   @      @   @  @   #
echo #   @       @   @   @ @ @   @ @ @   @      @  @   @   #
echo #   @   @   @   @   @ @ @   @ @ @   @@@    @@@    @   #
echo #   @  @ @  @   @   @ @ @   @ @ @   @      @  @   @   #
echo #   @ @   @ @   @   @ @ @   @ @ @   @      @   @      #
echo #    @     @    @   @  @@   @  @@   @@@@   @   @  @   #
echo #                                                     #
echo #                                                     #
echo #######################################################
echo.
echo.
exit /b

:endOfGame
goto menuk

