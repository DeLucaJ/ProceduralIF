"ProceduralStory" by Joe DeLuca

Chapter 0 - Setup

Section 1 - Assets

[Monsters, Items, and More]

Section 2 - The Map

[The Playing Map]
Hyrule Castle is a region.

[Rooms]
The Sanctum is a room in Hyrule Castle.
The Study is a room in Hyrule Castle.
The Guard's Chamber is a room in Hyrule Castle.
The Dining Hall is a room in Hyrule Castle.
The Library is a room in Hyrule Castle.
The Lockup is a room in Hyrule Castle. 

[Connections]
The Study is north of the Guard's Chamber.
The Guard's Chamber is west of the Dining Hall.
The Library is north of the Dining Hall. 
The Lockup is west of the Study. 
The Sanctum is west of the Library.

Section 3 - Initial Questions

[The Beginning]
When play begins:
	let Q1 be 0; 
	let Q2 be 0; 
	let Q3 be 0; 
	let Q4 be 0;
	say "Please answer the following yes/no questions.[line break][line break]";
	[Question 1]
	say "Did you usually help the Koroks?";
	if the player consents, now Q1 is 1; 
	[Question 2]
	say "Did you revive your horse when it died?";
	if the player consents, now Q2 is 10;
	[Question 3]
	say "Did you ride a bear?"; 
	if the player consents, now Q3 is 100;
	[Question 4]
	say "Did you defeat the Calamity?";
	if the player consents, now Q4 is 1000;
	[Select Profile] 
	let P be Q1 + Q2 + Q3 + Q4;
	if P is:
		-- 0000: say "Selecting Profile 1";
		-- 0001: say "Selecting Profile 2";
		-- 0010: say "Selecting Profile 3";
		-- 0011: say "Selecting Profile 4";
		-- 0100: say "Selecting Profile 5";
		-- 0101: say "Selecting Profile 6";
		-- 0110: say "Selecting Profile 7";
		-- 0111: say "Selecting Profile 8";
		-- 1000: say "Selecting Profile 9";
		-- 1001: say "Selecting Profile 10";
		-- 1010: say "Selecting Profile 11";
		-- 1011: say "Selecting Profile 12";
		-- 1100: say "Selecting Profile 13";
		-- 1101: say "Selecting Profile 14";
		-- 1110: say "Selecting Profile 15";
		-- 1111: say "Selecting Profile 16";

[End of Setup]
Chapter 1 - Profile 1

[end of Profile 1]
Chapter 2 - Profile 2

[end of Profile 2]
Chapter 3 - Profile 3

[end of Profile 3]
Chapter 4 - Profile 4

[end of Profile 4]
Chapter 5 - Profile 5

[end of Profile 5]
Chapter 6 - Profile 6

[end of Profile 6]
Chapter 7 - Profile 7

[end of Profile 1]
Chapter 8 - Profile 8

[end of Profile 8]