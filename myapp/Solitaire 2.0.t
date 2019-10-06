setscreen ("graphics:1280;720")
setscreen ("graphic,offscreenonly")
var fontt, fontt2, fontt4, fontt3 : int
var ss, xx : int
var font1, font2, font3, backf : int
var xmouse, ymouse, button : int
var win1, win2 : int
var spade, heart, club, diamond, zz : int
var xcor, cardN, cardN2, cardN3, cardN4, cardN5, points : int
var box1, box2, box3, box4, box5 : int
var bool : boolean := true
var bool2 : boolean := true
var bool3 : boolean := true
var bool4 : boolean := true
var bool5 : boolean := true
var bool6 : boolean := true
var num := Rand.Int (0, 12)
var num1 := Rand.Int (0, 12)
var num2 := Rand.Int (0, 12)
var num3 := Rand.Int (0, 12)
var num4 := Rand.Int (0, 12)
points := 200
xcor := 142
box1 := 520
cardN := 0
cardN2 := 0
cardN3 := 0
cardN4 := 0
cardN5 := 0
box2 := 520
box3 := 520
box4 := 520
box5 := 520
xx := 0
zz := 1
ss := 180
%To create the font size and font type
var cardback := Pic.FileNew ("Card Back.jpg")
var helps := Pic.FileNew ("Help.jpg")
fontt := Font.New ("times new roman:40:bold")
fontt2 := Font.New ("times new roman:30:bold")
font1 := Font.New ("times new roman:100:bold")
font2 := Font.New ("times new roman:35:bold")
font3 := Font.New ("times new roman:60:bold")
backf := Font.New ("times new roman:30:bold")
fontt4 := Font.New ("times new roman:60:bold")
fontt3 := Font.New ("times new roman:40:bold")
%These arrays inputs the cards into the game.
%Clubs
var Cl : array 0 .. 12 of int
Cl (0) := Pic.FileNew ("Ace Club.jpg")
Cl (1) := Pic.FileNew ("Two Club.jpg")
Cl (2) := Pic.FileNew ("Three Club.jpg")
Cl (3) := Pic.FileNew ("Four Club.jpg")
Cl (4) := Pic.FileNew ("Five Club.jpg")
Cl (5) := Pic.FileNew ("Six Club.jpg")
Cl (6) := Pic.FileNew ("Seven Club.jpg")
Cl (7) := Pic.FileNew ("Eight Club.jpg")
Cl (8) := Pic.FileNew ("Nine Club.jpg")
Cl (9) := Pic.FileNew ("Ten Club.jpg")
Cl (10) := Pic.FileNew ("Eleven Club.jpg")
Cl (11) := Pic.FileNew ("Twelve Club.jpg")
Cl (12) := Pic.FileNew ("Thirteen Club.jpg")
%Hearts
var H : array 0 .. 12 of int
H (0) := Pic.FileNew ("Ace Hearts.jpg")
H (1) := Pic.FileNew ("Two Hearts.jpg")
H (2) := Pic.FileNew ("Three Hearts.jpg")
H (3) := Pic.FileNew ("Four Hearts.jpg")
H (4) := Pic.FileNew ("Five Hearts.jpg")
H (5) := Pic.FileNew ("Six Hearts.jpg")
H (6) := Pic.FileNew ("Seven Hearts.jpg")
H (7) := Pic.FileNew ("Eight Hearts.jpg")
H (8) := Pic.FileNew ("Nine Hearts.jpg")
H (9) := Pic.FileNew ("Ten Hearts.jpg")
H (10) := Pic.FileNew ("Eleven Hearts.jpg")
H (11) := Pic.FileNew ("Twelve Hearts.jpg")
H (12) := Pic.FileNew ("Thirteen Hearts.jpg")
%Spades
var S : array 0 .. 12 of int
S (0) := Pic.FileNew ("Ace Spades.jpg")
S (1) := Pic.FileNew ("Two Spades.jpg")
S (2) := Pic.FileNew ("Three Spades.jpg")
S (3) := Pic.FileNew ("Four Spades.jpg")
S (4) := Pic.FileNew ("Five Spades.jpg")
S (5) := Pic.FileNew ("Six Spades.jpg")
S (6) := Pic.FileNew ("Seven Spades.jpg")
S (7) := Pic.FileNew ("Eight Spades.jpg")
S (8) := Pic.FileNew ("Nine Spades.jpg")
S (9) := Pic.FileNew ("Ten Spades.jpg")
S (10) := Pic.FileNew ("Eleven Spades.jpg")
S (11) := Pic.FileNew ("Twelve Spades.jpg")
S (12) := Pic.FileNew ("Thirteen Spades.jpg")
%Diamond
var D : array 0 .. 12 of int
D (0) := Pic.FileNew ("Ace Diamond.jpg")
D (1) := Pic.FileNew ("Two Diamond.jpg")
D (2) := Pic.FileNew ("Three Diamond.jpg")
D (3) := Pic.FileNew ("Four Diamond.jpg")
D (4) := Pic.FileNew ("Five Diamond.jpg")
D (5) := Pic.FileNew ("Six Diamond.jpg")
D (6) := Pic.FileNew ("Seven Diamond.jpg")
D (7) := Pic.FileNew ("Eight Diamond.jpg")
D (8) := Pic.FileNew ("Nine Diamond.jpg")
D (9) := Pic.FileNew ("Ten Diamond.jpg")
D (10) := Pic.FileNew ("Eleven Diamond.jpg")
D (11) := Pic.FileNew ("Twelve Diamond.jpg")
D (12) := Pic.FileNew ("Thirteen Diamond.jpg")
%The next four procedures are procedures to draw the cards
procedure hearts
    Pic.Draw (H (num), xcor + 128, 20, picCopy)
    Pic.Draw (H (num1), xcor + 256, 20, picCopy)
    Pic.Draw (H (num2), xcor + 384, 20, picCopy)
    Pic.Draw (H (num3), xcor + 508, 20, picCopy)
    Pic.Draw (H (num4), xcor + 640, 20, picCopy)
end hearts
procedure spades
    Pic.Draw (S (num), xcor + 128, 20, picCopy)
    Pic.Draw (S (num1), xcor + 256, 20, picCopy)
    Pic.Draw (S (num2), xcor + 384, 20, picCopy)
    Pic.Draw (S (num3), xcor + 508, 20, picCopy)
    Pic.Draw (S (num4), xcor + 640, 20, picCopy)
end spades
procedure clubs
    Pic.Draw (Cl (num), xcor + 128, 20, picCopy)
    Pic.Draw (Cl (num1), xcor + 256, 20, picCopy)
    Pic.Draw (Cl (num2), xcor + 384, 20, picCopy)
    Pic.Draw (Cl (num3), xcor + 508, 20, picCopy)
    Pic.Draw (Cl (num4), xcor + 640, 20, picCopy)
end clubs
procedure diamonds
    Pic.Draw (D (num), xcor + 128, 20, picCopy)
    Pic.Draw (D (num1), xcor + 256, 20, picCopy)
    Pic.Draw (D (num2), xcor + 384, 20, picCopy)
    Pic.Draw (D (num3), xcor + 508, 20, picCopy)
    Pic.Draw (D (num4), xcor + 640, 20, picCopy)
end diamonds
%Procedure to create the screen to select which card types you want
procedure cards
    fontt := Font.New ("times new roman:40:bold")
    spade := Pic.FileNew ("Spade.jpg")
    heart := Pic.FileNew ("Hearts.jpg")
    club := Pic.FileNew ("Club.jpg")
    diamond := Pic.FileNew ("Diamond.jpg")
    Draw.FillBox (0, 0, 10000, 10000, green)
    heart := Pic.Scale (heart, 300, 390)
    club := Pic.Scale (club, 300, 420)
    Pic.Draw (heart, 10, 200, picCopy)
    Pic.Draw (spade, 300, 200, picCopy)
    Pic.Draw (diamond, 650, 200, picCopy)
    Pic.Draw (club, 950, 190, picCopy)
    Draw.Text ("Which Type Of Cards Would You Like?", 150, 65, fontt, red)
end cards
%Procedure to create the main menu screen
procedure menu
    Draw.FillBox (0, 0, 10020, 1280, green)
    Draw.Text ("Solitair 2.0", 300, 600, font1, red)
    Draw.FillBox (300, 500, 900, 450, black)
    Draw.Text ("Start", 550, 462, font2, white)
    Draw.FillBox (300, 400, 900, 350, black)
    Draw.Text ("Help", 550, 362, font2, white)
    Draw.FillBox (300, 300, 900, 250, black)
    Draw.Text ("Credit", 550, 262, font2, white)
end menu
procedure theend
    Draw.FillBox (0, 0, 10000, 10000, green)
    Draw.Text ("Have A Nice Day", 200, 600, font1, black)
    Draw.Text (intstr (points), 800, 400, font2, black)
    Draw.Text ("Total Points:", 500, 400, font2, black)
end theend
%Calls up the procedure menu
menu
%Procedure to creat the main game screen
procedure mainGame
    Draw.FillBox (0, 0, 10000, 10000, green)
    Draw.Box (50, 680, 160, 520, black)
    Draw.Box (200, 680, 310, 520, black)
    Draw.Box (345, 680, 455, 520, black)
    Draw.Box (490, 680, 600, 520, black)
    Draw.Box (640, 680, 750, 520, black)
    Draw.Box (998, 398, 1202, 483, black)
    Pic.Draw (cardback, 1050, 20, picCopy)
    Draw.Text ("Points:", 900, 600, backf, black)
    Draw.FillBox (1000, 400, 1200, 480, white)
    Draw.Text ("Shuffle", 1025, 425, fontt, black)
    Draw.Box (1050, 180, 1160, 20, black)
    Draw.Box (270, 180, 380, 20, black)
    Draw.Box (400, 180, 510, 20, black)
    Draw.Box (525, 180, 635, 20, black)
    Draw.Box (650, 180, 760, 20, black)
    Draw.Box (780, 180, 890, 20, black)
    Draw.Box (1100, 220, 1200, 280, black)
    Draw.FillBox (1103, 222, 1197, 277, white)
    Draw.Text ("End", 1115, 235, backf, black)
end mainGame
%Procedure to creat the mode screen where you can either select timed mode or endless mode
procedure mode
    Draw.FillBox (0, 0, 10000, 10000, green)
    Draw.FillBox (90, 200, 500, 600, white)
    Draw.FillBox (700, 200, 1110, 600, black)
    Draw.Text ("Which Mode?", 300, 650, fontt4, red)
    Draw.Text ("Endless", 200, 380, fontt3, black)
    Draw.Text ("Coming Soon", 760, 380, fontt3, white)
end mode
%Procedure to create credits
procedure credits
    Draw.FillBox (0, 0, 10020, 1280, green)
    Draw.Text ("Credits", 500, 600, font3, red)
    Draw.FillBox (1000, 50, 1100, 100, white)
    Draw.Text ("Back", 1007, 65, backf, black)
    Draw.Text ("Benson Made Everything", 430, 500, backf, black)
    loop
	Mouse.Where (xmouse, ymouse, button)
	if button = 1 then
	    if xmouse > 1000 and xmouse < 1100 and ymouse > 50 and ymouse < 100 then
		exit
	    end if
	end if
    end loop
    menu ()
end credits
%Procedure to creat the help screen
procedure help
    Pic.Draw (helps, 0, 0, picCopy)
    Draw.Text ("Help", 500, 600, font3, red)
    Draw.FillBox (1000, 50, 1100, 100, white)
    Draw.Text ("Back", 1007, 65, backf, black)
    loop
	Mouse.Where (xmouse, ymouse, button)
	if button = 1 then
	    if xmouse > 1000 and xmouse < 1100 and ymouse > 50 and ymouse < 100 then
		exit
	    end if
	end if
    end loop
    menu ()
end help
%This loop lets you choose which screen you want to go to, when one the start button is clicked it will exit the loop
loop
    Mouse.Where (xmouse, ymouse, button)
    if xmouse >= 300 and xmouse <= 900 and ymouse <= 300 and ymouse >= 250 then
	if button = 1 then
	    credits
	end if
    end if
    if xmouse >= 300 and xmouse <= 900 and ymouse <= 400 and ymouse >= 350 then
	if button = 1 then
	    help

	end if
    end if
    if xmouse > 300 and xmouse < 900 and ymouse < 500 and ymouse > 450 then
	if button = 1 then
	    mode
	    delay (200)
	    xx := xx + 5
	    exit
	end if
    end if
end loop
if xx = 5 then
    %Loops to let the user choose which mode the user wants
    loop
	Mouse.Where (xmouse, ymouse, button)
	if xmouse > 90 and xmouse < 500 and ymouse > 200 and ymouse < 600 then
	    if button = 1 then
		cards
		delay (200)
		xx := xx + 1
		exit
	    end if
	end if
    end loop
end if
if xx = 6 then
    %Loop to let the user choose which type of cards they want for the timed mode
    loop
	Mouse.Where (xmouse, ymouse, button)
	if xmouse > 10 and xmouse < 300 and ymouse > 200 and ymouse < 590 then
	    if button = 1 then
		mainGame
		delay (200)
		zz := zz + 1 %Hearts
		exit
	    end if
	end if
	if xmouse > 310 and xmouse < 590 and ymouse > 200 and ymouse < 590 then
	    if button = 1 then
		mainGame
		delay (200)
		zz := zz + 2 %Spades
		exit
	    end if
	end if
	if xmouse > 655 and xmouse < 950 and ymouse > 200 and ymouse < 600 then
	    if button = 1 then
		mainGame
		delay (200)
		zz := zz + 3 %Diamond
		exit
	    end if
	end if
	if xmouse > 960 and xmouse < 1230 and ymouse > 200 and ymouse < 590 then
	    if button = 1 then
		mainGame
		delay (200)
		zz := zz + 4 %Clubs
		exit
	    end if
	end if
    end loop
end if
if zz = 2 then %Hearts
    for pic : 1 .. 5
	hearts
    end for
    %This loop is the main program that lets you place cards
    Draw.Text (intstr (points), 1030, 600, backf, black)
    loop
	loop
	    %These ifs under this is used for if king is placed, the row gets erased
	    if cardN = 13 then
		for decreasing yyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (50, yyy, 160, 680, green)
		    View.Update
		end for
		Draw.Box (50, 680, 160, 520, black)
		cardN := 0
		box1 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN2 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (200, yyyy, 310, 680, green)
		    View.Update
		end for
		Draw.Box (200, 680, 310, 520, black)
		cardN2 := 0
		box2 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)

	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (345, yyyy, 455, 680, green)
		    View.Update
		end for
		Draw.Box (345, 680, 455, 520, black)
		cardN3 := 0
		box3 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN4 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (490, yyyy, 600, 680, green)
		    View.Update
		end for
		Draw.Box (490, 680, 600, 520, black)
		cardN4 := 0
		box4 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (640, yyyy, 750, 680, green)
		    View.Update
		end for
		Draw.Box (640, 680, 750, 520, black)
		cardN5 := 0
		box5 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    %These ifs statements are the buttons
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 1000 and xmouse < 1200 and ymouse > 400 and ymouse < 480 then
		if button = 1 then
		    delay (300)
		    num := Rand.Int (0, 12)
		    num1 := Rand.Int (0, 12)
		    num2 := Rand.Int (0, 12)
		    num3 := Rand.Int (0, 12)
		    num4 := Rand.Int (0, 12)
		    points := points - 5
		    Draw.FillBox (1030, 630, 1200, 590, green)
		    Draw.Text (intstr (points), 1030, 600, backf, black)
		    for : 1 .. 5
			hearts
		    end for
		end if
	    end if
	    if xmouse > 270 and xmouse < 380 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    Draw.Box (270, 180, 380, 20, yellow)
		    Draw.Box (271, 181, 381, 22, yellow)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool2 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 400 and xmouse < 510 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool4 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, yellow)
		    Draw.Box (395, 181, 511, 22, yellow)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool3 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 525 and xmouse < 635 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, yellow)
		    Draw.Box (524, 181, 636, 22, yellow)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool4 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 650 and xmouse < 760 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, yellow)
		    Draw.Box (649, 181, 761, 22, yellow)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool5 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 780 and xmouse < 890 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool5 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, yellow)
		    Draw.Box (779, 181, 891, 22, yellow)
		    bool6 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    exit when xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 and button = 1
	end loop
	%This loop and if statements moves thet cards
	loop
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN then
			Pic.Draw (H (num), 50, box1, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (H (num), xcor + 128, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN then
			Pic.Draw (H (num1), 50, box1, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (H (num1), xcor + 256, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN then
			Pic.Draw (H (num2), 50, box1, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (H (num2), xcor + 384, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN then
			Pic.Draw (H (num3), 50, box1, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (H (num3), xcor + 508, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN then
			Pic.Draw (H (num4), 50, box1, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (H (num4), xcor + 640, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN2 then
			Pic.Draw (H (num), 200, box2, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (H (num), xcor + 128, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN2 then
			Pic.Draw (H (num1), 200, box2, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (H (num1), xcor + 256, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN2 then
			Pic.Draw (H (num2), 200, box2, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (H (num2), xcor + 384, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN2 then
			Pic.Draw (H (num3), 200, box2, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (H (num3), xcor + 508, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN2 then
			Pic.Draw (H (num4), 200, box2, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (H (num4), xcor + 640, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN3 then
			Pic.Draw (H (num), 345, box3, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (H (num), xcor + 128, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN3 then
			Pic.Draw (H (num1), 345, box3, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (H (num1), xcor + 256, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN3 then
			Pic.Draw (H (num2), 345, box3, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (H (num2), xcor + 384, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN3 then
			Pic.Draw (H (num3), 345, box3, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (H (num3), xcor + 508, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN3 then
			Pic.Draw (H (num4), 345, box3, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (H (num4), xcor + 640, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN4 then
			Pic.Draw (H (num), 490, box4, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (H (num), xcor + 128, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN4 then
			Pic.Draw (H (num1), 490, box4, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (H (num1), xcor + 256, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN4 then
			Pic.Draw (H (num2), 490, box4, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (H (num2), xcor + 384, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN4 then
			Pic.Draw (H (num3), 490, box4, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (H (num3), xcor + 508, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN4 then
			Pic.Draw (H (num4), 490, box4, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (H (num4), xcor + 640, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN5 then
			Pic.Draw (H (num), 640, box5, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (H (num), xcor + 128, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN5 then
			Pic.Draw (H (num1), 640, box5, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (H (num1), xcor + 256, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN5 then
			Pic.Draw (H (num2), 640, box5, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (H (num2), xcor + 384, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN5 then
			Pic.Draw (H (num3), 640, box5, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (H (num3), xcor + 508, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN5 then
			Pic.Draw (H (num4), 640, box5, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (H (num4), xcor + 640, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 then
		if button = 1 then
		    theend
		end if
	    end if
	end loop
    end loop

end if
if zz = 3 then %Spades
    for cardss : 1 .. 5
	spades
    end for
    %This loop is the main program that lets you place cards
    Draw.Text (intstr (points), 1030, 600, backf, black)
    loop
	loop
	    %The two ifs under this is used for if king is placed, the row gets erased
	    if cardN = 13 then
		for decreasing yyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (50, yyy, 160, 680, green)
		    View.Update
		end for
		Draw.Box (50, 680, 160, 520, black)
		cardN := 0
		box1 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN2 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (200, yyyy, 310, 680, green)
		    View.Update
		end for
		Draw.Box (200, 680, 310, 520, black)
		cardN2 := 0
		box2 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)

	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (345, yyyy, 455, 680, green)
		    View.Update
		end for
		Draw.Box (345, 680, 455, 520, black)
		cardN3 := 0
		box3 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN4 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (490, yyyy, 600, 680, green)
		    View.Update
		end for
		Draw.Box (490, 680, 600, 520, black)
		cardN4 := 0
		box4 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (640, yyyy, 750, 680, green)
		    View.Update
		end for
		Draw.Box (640, 680, 750, 520, black)
		cardN5 := 0
		box5 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    %These ifs statements are the buttons
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 1000 and xmouse < 1200 and ymouse > 400 and ymouse < 480 then
		if button = 1 then
		    delay (300)
		    num := Rand.Int (0, 12)
		    num1 := Rand.Int (0, 12)
		    num2 := Rand.Int (0, 12)
		    num3 := Rand.Int (0, 12)
		    num4 := Rand.Int (0, 12)
		    points := points - 5
		    Draw.FillBox (1030, 630, 1200, 590, green)
		    Draw.Text (intstr (points), 1030, 600, backf, black)
		    for : 1 .. 5
			spades
		    end for
		end if
	    end if
	    if xmouse > 270 and xmouse < 380 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    Draw.Box (270, 180, 380, 20, yellow)
		    Draw.Box (271, 181, 381, 22, yellow)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool2 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 400 and xmouse < 510 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool4 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, yellow)
		    Draw.Box (395, 181, 511, 22, yellow)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool3 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 525 and xmouse < 635 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, yellow)
		    Draw.Box (524, 181, 636, 22, yellow)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool4 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 650 and xmouse < 760 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, yellow)
		    Draw.Box (649, 181, 761, 22, yellow)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool5 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 780 and xmouse < 890 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool5 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, yellow)
		    Draw.Box (779, 181, 891, 22, yellow)
		    bool6 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    exit when xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 and button = 1
	end loop
	%This loop and if statements moves thet cards
	loop
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN then
			Pic.Draw (S (num), 50, box1, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (S (num), xcor + 128, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN then
			Pic.Draw (S (num1), 50, box1, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (S (num1), xcor + 256, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN then
			Pic.Draw (S (num2), 50, box1, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (S (num2), xcor + 384, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN then
			Pic.Draw (S (num3), 50, box1, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (S (num3), xcor + 508, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN then
			Pic.Draw (S (num4), 50, box1, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (S (num4), xcor + 640, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN2 then
			Pic.Draw (S (num), 200, box2, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (S (num), xcor + 128, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN2 then
			Pic.Draw (S (num1), 200, box2, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (S (num1), xcor + 256, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN2 then
			Pic.Draw (S (num2), 200, box2, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (S (num2), xcor + 384, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN2 then
			Pic.Draw (S (num3), 200, box2, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (S (num3), xcor + 508, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN2 then
			Pic.Draw (S (num4), 200, box2, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (S (num4), xcor + 640, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN3 then
			Pic.Draw (S (num), 345, box3, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (S (num), xcor + 128, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN3 then
			Pic.Draw (S (num1), 345, box3, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (S (num1), xcor + 256, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN3 then
			Pic.Draw (S (num2), 345, box3, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (S (num2), xcor + 384, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN3 then
			Pic.Draw (S (num3), 345, box3, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (S (num3), xcor + 508, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN3 then
			Pic.Draw (S (num4), 345, box3, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (S (num4), xcor + 640, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN4 then
			Pic.Draw (S (num), 490, box4, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (S (num), xcor + 128, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN4 then
			Pic.Draw (S (num1), 490, box4, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (S (num1), xcor + 256, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN4 then
			Pic.Draw (S (num2), 490, box4, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (S (num2), xcor + 384, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN4 then
			Pic.Draw (S (num3), 490, box4, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (S (num3), xcor + 508, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN4 then
			Pic.Draw (S (num4), 490, box4, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (S (num4), xcor + 640, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN5 then
			Pic.Draw (S (num), 640, box5, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (S (num), xcor + 128, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN5 then
			Pic.Draw (S (num1), 640, box5, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (S (num1), xcor + 256, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN5 then
			Pic.Draw (S (num2), 640, box5, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (S (num2), xcor + 384, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN5 then
			Pic.Draw (S (num3), 640, box5, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (S (num3), xcor + 508, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN5 then
			Pic.Draw (S (num4), 640, box5, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (S (num4), xcor + 640, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 then
		if button = 1 then
		    theend
		end if
	    end if
	end loop
    end loop
end if
if zz = 4 then %Diamionds
    for cardsss : 1 .. 5
	diamonds
    end for
    %This loop is the main program that lets you place cards
    Draw.Text (intstr (points), 1030, 600, backf, black)
    loop
	loop
	    %The two ifs under this is used for if king is placed, the row gets erased
	    if cardN = 13 then
		for decreasing yyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (50, yyy, 160, 680, green)
		    View.Update
		end for
		Draw.Box (50, 680, 160, 520, black)
		cardN := 0
		box1 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN2 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (200, yyyy, 310, 680, green)
		    View.Update
		end for
		Draw.Box (200, 680, 310, 520, black)
		cardN2 := 0
		box2 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)

	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (345, yyyy, 455, 680, green)
		    View.Update
		end for
		Draw.Box (345, 680, 455, 520, black)
		cardN3 := 0
		box3 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN4 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (490, yyyy, 600, 680, green)
		    View.Update
		end for
		Draw.Box (490, 680, 600, 520, black)
		cardN4 := 0
		box4 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (640, yyyy, 750, 680, green)
		    View.Update
		end for
		Draw.Box (640, 680, 750, 520, black)
		cardN5 := 0
		box5 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    %These ifs statements are the buttons
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 1000 and xmouse < 1200 and ymouse > 400 and ymouse < 480 then
		if button = 1 then
		    delay (300)
		    num := Rand.Int (0, 12)
		    num1 := Rand.Int (0, 12)
		    num2 := Rand.Int (0, 12)
		    num3 := Rand.Int (0, 12)
		    num4 := Rand.Int (0, 12)
		    points := points - 5
		    Draw.FillBox (1030, 630, 1200, 590, green)
		    Draw.Text (intstr (points), 1030, 600, backf, black)
		    for : 1 .. 5
			diamonds
		    end for
		end if
	    end if
	    if xmouse > 270 and xmouse < 380 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    Draw.Box (270, 180, 380, 20, yellow)
		    Draw.Box (271, 181, 381, 22, yellow)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool2 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 400 and xmouse < 510 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool4 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, yellow)
		    Draw.Box (395, 181, 511, 22, yellow)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool3 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 525 and xmouse < 635 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, yellow)
		    Draw.Box (524, 181, 636, 22, yellow)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool4 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 650 and xmouse < 760 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, yellow)
		    Draw.Box (649, 181, 761, 22, yellow)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool5 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 780 and xmouse < 890 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool5 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, yellow)
		    Draw.Box (779, 181, 891, 22, yellow)
		    bool6 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    exit when xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 and button = 1
	    exit when xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 and button = 1
	end loop
	%This loop and if statements moves thet cards
	loop
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN then
			Pic.Draw (D (num), 50, box1, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (D (num), xcor + 128, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN then
			Pic.Draw (D (num1), 50, box1, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (D (num1), xcor + 256, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN then
			Pic.Draw (D (num2), 50, box1, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (D (num2), xcor + 384, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN then
			Pic.Draw (D (num3), 50, box1, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (D (num3), xcor + 508, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN then
			Pic.Draw (D (num4), 50, box1, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (D (num4), xcor + 640, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN2 then
			Pic.Draw (D (num), 200, box2, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (D (num), xcor + 128, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN2 then
			Pic.Draw (D (num1), 200, box2, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (D (num1), xcor + 256, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN2 then
			Pic.Draw (D (num2), 200, box2, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (D (num2), xcor + 384, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN2 then
			Pic.Draw (D (num3), 200, box2, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (D (num3), xcor + 508, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN2 then
			Pic.Draw (D (num4), 200, box2, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (D (num4), xcor + 640, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN3 then
			Pic.Draw (D (num), 345, box3, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (D (num), xcor + 128, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN3 then
			Pic.Draw (D (num1), 345, box3, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (D (num1), xcor + 256, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN3 then
			Pic.Draw (D (num2), 345, box3, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (D (num2), xcor + 384, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN3 then
			Pic.Draw (D (num3), 345, box3, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (D (num3), xcor + 508, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN3 then
			Pic.Draw (D (num4), 345, box3, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (D (num4), xcor + 640, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN4 then
			Pic.Draw (D (num), 490, box4, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (D (num), xcor + 128, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN4 then
			Pic.Draw (D (num1), 490, box4, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (D (num1), xcor + 256, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN4 then
			Pic.Draw (D (num2), 490, box4, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (D (num2), xcor + 384, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN4 then
			Pic.Draw (D (num3), 490, box4, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (D (num3), xcor + 508, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN4 then
			Pic.Draw (D (num4), 490, box4, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (D (num4), xcor + 640, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN5 then
			Pic.Draw (D (num), 640, box5, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (D (num), xcor + 128, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN5 then
			Pic.Draw (D (num1), 640, box5, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (D (num1), xcor + 256, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN5 then
			Pic.Draw (D (num2), 640, box5, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (D (num2), xcor + 384, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN5 then
			Pic.Draw (D (num3), 640, box5, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (D (num3), xcor + 508, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN5 then
			Pic.Draw (D (num4), 640, box5, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (D (num4), xcor + 640, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 then
		if button = 1 then
		    theend
		end if
	    end if
	end loop
    end loop

end if
if zz = 5 then %Clubs
    for cardssss : 1 .. 5
	clubs
    end for
    %This loop is the main program that lets you place cards
    Draw.Text (intstr (points), 1030, 600, backf, black)
    loop
	loop
	    %The two ifs under this is used for if king is placed, the row gets erased
	    if cardN = 13 then
		for decreasing yyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (50, yyy, 160, 680, green)
		    View.Update
		end for
		Draw.Box (50, 680, 160, 520, black)
		cardN := 0
		box1 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN2 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (200, yyyy, 310, 680, green)
		    View.Update
		end for
		Draw.Box (200, 680, 310, 520, black)
		cardN2 := 0
		box2 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)

	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (345, yyyy, 455, 680, green)
		    View.Update
		end for
		Draw.Box (345, 680, 455, 520, black)
		cardN3 := 0
		box3 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN4 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (490, yyyy, 600, 680, green)
		    View.Update
		end for
		Draw.Box (490, 680, 600, 520, black)
		cardN4 := 0
		box4 := 520
		points := points + 200
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    if cardN3 = 13 then
		for decreasing yyyy : 1000 .. 280
		    delay (5)
		    Draw.FillBox (640, yyyy, 750, 680, green)
		    View.Update
		end for
		Draw.Box (640, 680, 750, 520, black)
		cardN5 := 0
		box5 := 520
		points := points + 100
		Draw.FillBox (1030, 630, 1200, 590, green)
		Draw.Text (intstr (points), 1030, 600, backf, black)
	    end if
	    %These ifs statements are the buttons
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 1000 and xmouse < 1200 and ymouse > 400 and ymouse < 480 then
		if button = 1 then
		    delay (300)
		    num := Rand.Int (0, 12)
		    num1 := Rand.Int (0, 12)
		    num2 := Rand.Int (0, 12)
		    num3 := Rand.Int (0, 12)
		    num4 := Rand.Int (0, 12)
		    points := points - 5
		    Draw.FillBox (1030, 630, 1200, 590, green)
		    Draw.Text (intstr (points), 1030, 600, backf, black)
		    for : 1 .. 5
			clubs
		    end for
		end if
	    end if
	    if xmouse > 270 and xmouse < 380 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    Draw.Box (270, 180, 380, 20, yellow)
		    Draw.Box (271, 181, 381, 22, yellow)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool2 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 400 and xmouse < 510 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool4 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, yellow)
		    Draw.Box (395, 181, 511, 22, yellow)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool3 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 525 and xmouse < 635 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool5 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, yellow)
		    Draw.Box (524, 181, 636, 22, yellow)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool4 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 650 and xmouse < 760 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool6 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, yellow)
		    Draw.Box (649, 181, 761, 22, yellow)
		    Draw.Box (780, 180, 890, 20, black)
		    Draw.Box (779, 181, 891, 22, green)
		    bool5 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    if xmouse > 780 and xmouse < 890 and ymouse > 20 and ymouse < 180 then
		if button = 1 then
		    bool2 := true
		    bool3 := true
		    bool4 := true
		    bool5 := true
		    Draw.Box (270, 180, 380, 20, black)
		    Draw.Box (271, 181, 381, 22, green)
		    Draw.Box (396, 180, 510, 20, black)
		    Draw.Box (395, 181, 511, 22, green)
		    Draw.Box (525, 180, 635, 20, black)
		    Draw.Box (524, 181, 636, 22, green)
		    Draw.Box (650, 180, 760, 20, black)
		    Draw.Box (649, 181, 761, 22, green)
		    Draw.Box (780, 180, 890, 20, yellow)
		    Draw.Box (779, 181, 891, 22, yellow)
		    bool6 := false
		end if
	    end if
	    exit when xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and button = 1
	    exit when xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and button = 1
	    exit when xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and button = 1
	    exit when xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and button = 1
	    exit when xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and button = 1
	    exit when xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 and button = 1
	end loop
	%This loop and if statements moves thet cards
	loop
	    Mouse.Where (xmouse, ymouse, button)
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN then
			Pic.Draw (Cl (num), 50, box1, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (Cl (num), xcor + 128, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN then
			Pic.Draw (Cl (num1), 50, box1, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (Cl (num1), xcor + 256, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN then
			Pic.Draw (Cl (num2), 50, box1, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (Cl (num2), xcor + 384, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN then
			Pic.Draw (Cl (num3), 50, box1, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (Cl (num3), xcor + 508, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 50 and xmouse < 160 and ymouse > box1 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN then
			Pic.Draw (Cl (num4), 50, box1, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (Cl (num4), xcor + 640, 20, picCopy)
			cardN := cardN + 1
			box1 := box1 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN2 then
			Pic.Draw (Cl (num), 200, box2, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (Cl (num), xcor + 128, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN2 then
			Pic.Draw (Cl (num1), 200, box2, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (Cl (num1), xcor + 256, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN2 then
			Pic.Draw (Cl (num2), 200, box2, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (Cl (num2), xcor + 384, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN2 then
			Pic.Draw (Cl (num3), 200, box2, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (Cl (num3), xcor + 508, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 200 and xmouse < 310 and ymouse > box2 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN2 then
			Pic.Draw (Cl (num4), 200, box2, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (Cl (num4), xcor + 640, 20, picCopy)
			cardN2 := cardN2 + 1
			box2 := box2 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN3 then
			Pic.Draw (Cl (num), 345, box3, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (Cl (num), xcor + 128, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN3 then
			Pic.Draw (Cl (num1), 345, box3, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (Cl (num1), xcor + 256, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN3 then
			Pic.Draw (Cl (num2), 345, box3, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (Cl (num2), xcor + 384, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN3 then
			Pic.Draw (Cl (num3), 345, box3, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (Cl (num3), xcor + 508, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 345 and xmouse < 455 and ymouse > box3 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN3 then
			Pic.Draw (Cl (num4), 345, box3, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (Cl (num4), xcor + 640, 20, picCopy)
			cardN3 := cardN3 + 1
			box3 := box3 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN4 then
			Pic.Draw (Cl (num), 490, box4, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (Cl (num), xcor + 128, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN4 then
			Pic.Draw (Cl (num1), 490, box4, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (Cl (num1), xcor + 256, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN4 then
			Pic.Draw (Cl (num2), 490, box4, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (Cl (num2), xcor + 384, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN4 then
			Pic.Draw (Cl (num3), 490, box4, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (Cl (num3), xcor + 508, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 490 and xmouse < 600 and ymouse > box4 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN4 then
			Pic.Draw (Cl (num4), 490, box4, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (Cl (num4), xcor + 640, 20, picCopy)
			cardN4 := cardN4 + 1
			box4 := box4 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool2 = false then
		if button = 1 then
		    delay (100)
		    if num = cardN5 then
			Pic.Draw (Cl (num), 640, box5, picCopy)
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
			delay (80)
			num := Rand.Int (0, 12)
			Draw.FillBox (270, 180, 380, 20, green)
			Pic.Draw (Cl (num), xcor + 128, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool2 := true
			bool3 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (270, 180, 380, 20, black)
			Draw.Box (271, 181, 381, 22, green)
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool3 = false then
		if button = 1 then
		    delay (100)
		    if num1 = cardN5 then
			Pic.Draw (Cl (num1), 640, box5, picCopy)
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			delay (80)
			num1 := Rand.Int (0, 12)
			Draw.FillBox (400, 180, 510, 20, green)
			Pic.Draw (Cl (num1), xcor + 256, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (396, 180, 510, 20, black)
			Draw.Box (395, 181, 511, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool4 = false then
		if button = 1 then
		    delay (100)
		    if num2 = cardN5 then
			Pic.Draw (Cl (num2), 640, box5, picCopy)
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 637, 22, green)
			delay (80)
			num2 := Rand.Int (0, 12)
			Draw.FillBox (530, 180, 638, 20, green)
			Pic.Draw (Cl (num2), xcor + 384, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (525, 180, 635, 20, black)
			Draw.Box (524, 181, 636, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool5 = false then
		if button = 1 then
		    delay (100)
		    if num3 = cardN5 then
			Pic.Draw (Cl (num3), 640, box5, picCopy)
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			delay (80)
			num3 := Rand.Int (0, 12)
			Draw.FillBox (655, 180, 763, 20, green)
			Pic.Draw (Cl (num3), xcor + 508, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (650, 180, 760, 20, black)
			Draw.Box (649, 181, 761, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 640 and xmouse < 750 and ymouse > box5 and ymouse < 680 and bool6 = false then
		if button = 1 then
		    delay (100)
		    if num4 = cardN5 then
			Pic.Draw (Cl (num4), 640, box5, picCopy)
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			delay (80)
			num4 := Rand.Int (0, 12)
			Draw.FillBox (785, 180, 893, 20, green)
			Pic.Draw (Cl (num4), xcor + 640, 20, picCopy)
			cardN5 := cardN5 + 1
			box5 := box5 - 20
			bool3 := true
			bool2 := true
			bool4 := true
			bool5 := true
			bool6 := true
			exit
		    else
			Draw.Box (780, 180, 890, 20, black)
			Draw.Box (779, 181, 891, 22, green)
			exit
		    end if
		end if
	    end if
	    if xmouse > 1103 and xmouse < 1197 and ymouse > 222 and ymouse < 277 then
		if button = 1 then
		    theend
		end if
	    end if
	end loop
    end loop

end if
