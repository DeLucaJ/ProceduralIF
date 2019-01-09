"ProceduralStory" by Joe DeLuca

Chapter 0 - Setup

Section 1 - Assets

[Monsters, Items, and More]

Section 2 - The Map

[The Playing Map]
Hyrule Castle is a region.

[Characters and Monsters]

[Rooms]
The Sanctum is a room in Hyrule Castle. The Throne is in here. The Master Sword is in here. 

The Study is a room in Hyrule Castle. A desk is in here. A note is on the desk. A pen is on the desk. A chair is in the room. 

The Guard Chamber is a room in Hyrule Castle. A metal chair is in here. A metal table is in here. A keyhook is in here. The keyhook is fixed in place. The guard key is on the keyhook. 

The Dining Hall is a room in Hyrule Castle. A dining table is in here. There are eight chairs in here. A bowl of fruit is on the dining table. There are eight plates on the dining table. There are eight forks on the dining table. There are eight spoons on the dining table. There are eight kinives on the dining table. 

The Library is a room in Hyrule Castle. A large bookshelf is in the library. There are 100 books on the bookshelf. There is a blue book on the bookshelf. The king's key is in the blue book. There is a plush chair in the room. There is a fireplace in the room. 

The Lockup is a room in Hyrule Castle. Farore's Pearl is in there. 

The Healing Spring is a room in Hyrule Castle.

The Armory is a room in Hyrule Castle. Din's Pearl is in there. 

The King's Chamber is a room in Hyrule Castle. Naryu's Pearl is in there. 

The Courtyard is a room in Hyrule Castle. 

[Item rules and properties]
The guard key unlocks the Lockup Door and the Armory Door. 
The king's key unlocks the King Door. 
The korok key unlocks the Korok Door. 

[Connections]
The Study is south of the Library.
The Study is east of the Dining Hall.
The Library is north of the Study. 
The Dining Hall is south of the Guard Chamber.
The Boss Door is south of the Sanctum and north of the Courtyard. The Boss Door is a door. The Boss Door is lockable and locked. 
The Korok Door is east of the Healing Spring and west of the Dining Hall. The Korok Door is a door. The Korok Door is lockable and locked. [The Korok Door has matching key the korok key. ]
The Lockup Door is east of the Lockup and west of the Guard Chamber. The Lockup Door is a door. The Lockup Door is lockable and locked. [The Lockup Door has the matching key the guard key. ]
The King Door is south of the King's Chamber and north of the Library. The King Door is a door. The King Door is lockable and locked. [The King Door has the matching key king's key. ]
The Armory Door is south of the Courtyard and north of the Armory. The Armory Door is a door. The Armory door is lockable and locked. [The Armory Door has matching key the guard key. ]
The Courtyard is east from the Guard Chamber and west from the Library.

Section 3 - Initial Questions

[The Beginning]

Profile is a number which varies. Profile is 0. 

[INTRODUCTION PASSAGE]

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
		-- 0000:
			say "Selecting Profile 1";
			now Profile is 1;
		-- 0001: 
			say "Selecting Profile 2";
			now Profile is 2;
		-- 0010: 
			say "Selecting Profile 3";
			now Profile is 3;
		-- 0011: 
			say "Selecting Profile 4";
			now Profile is 4;
		-- 0100: 
			say "Selecting Profile 5";
			now Profile is 5;
		-- 0101: 
			say "Selecting Profile 6";
			now Profile is 6;
		-- 0110: 
			say "Selecting Profile 7";
			now Profile is 7;
		-- 0111: 
			say "Selecting Profile 8";
			now Profile is 8;
		-- 1000: 
			say "Selecting Profile 9";
			now Profile is 9;
		-- 1001: 
			say "Selecting Profile 10";
			now Profile is 10;
		-- 1010: 
			say "Selecting Profile 11";
			now Profile is 11;
		-- 1011: 
			say "Selecting Profile 12";
			now Profile is 12;
		-- 1100: 
			say "Selecting Profile 13";
			now Profile is 13;
		-- 1101: 
			say "Selecting Profile 14";
			now Profile is 14;
		-- 1110: 
			say "Selecting Profile 15";
			now Profile is 15;
		-- 1111: 
			say "Selecting Profile 16";
			now Profile is 16;

When play begins:
	try waiting;

The player is in the Courtyard.

[AFTER QUESTIONS PASSAGE]

[End of Setup]
Chapter 1 - Profile 1

Profile1 is a scene. Profile1 begins when Profile is 1. 

When Profile1 begins:
	say "Beginning Profile 1";

[end of Profile 1]
Chapter 2 - Profile 2

Profile2 is a scene. Profile2 begins when Profile is 2. 

When Profile2 begins:
	say "Beginning Profile 2";

[end of Profile 2]
Chapter 3 - Profile 3

Profile3 is a scene. Profile3 begins when Profile is 3. 

When Profile3 begins:
	say "Beginning Profile 3";

[end of Profile 3]
Chapter 4 - Profile 4

Profile4 is a scene. Profile4 begins when Profile is 4. 

When Profile4 begins:
	say "Beginning Profile 4";

[end of Profile 4]
Chapter 5 - Profile 5

Profile5 is a scene. Profile5 begins when Profile is 5. 

When Profile5 begins:
	say "Beginning Profile 5";

[end of Profile 5]
Chapter 6 - Profile 6

Profile6 is a scene. Profile6 begins when Profile is 6. 

When Profile6 begins:
	say "Beginning Profile 6";

[end of Profile 6]
Chapter 7 - Profile 7

Profile7 is a scene. Profile7 begins when Profile is 7. 

When Profile7 begins:
	say "Beginning Profile 7";

[end of Profile 7]
Chapter 8 - Profile 8

Profile8 is a scene. Profile8 begins when Profile is 8. 

When Profile8 begins:
	say "Beginning Profile 8";

[end of Profile 8]
Chapter 9 - Profile 9

Profile9 is a scene. Profile9 begins when Profile is 9. 

When Profile9 begins:
	say "Beginning Profile 9";

[end of Profile 9]
Chapter 10 - Profile 10

Profile10 is a scene. Profile10 begins when Profile is 10. 

When Profile10 begins:
	say "Beginning Profile 10";

[end of Profile 100]
Chapter 11 - Profile 11

Profile11 is a scene. Profile11 begins when Profile is 11. 

When Profile11 begins:
	say "Beginning Profile 11";

[end of Profile 11]
Chapter 12 - Profile 12

Profile12 is a scene. Profile12 begins when Profile is 12. 

When Profile12 begins:
	say "Beginning Profile 12";

[end of Profile 122]
Chapter 13 - Profile 13

Profile13 is a scene. Profile13 begins when Profile is 13. 

When Profile13 begins:
	say "Beginning Profile 13";

[end of Profile 133]
Chapter 14 - Profile 14

Profile14 is a scene. Profile14 begins when Profile is 14. 

When Profile14 begins:
	say "Beginning Profile 14";

[end of Profile 144]
Chapter 15 - Profile 15

Profile15 is a scene. Profile15 begins when Profile is 15. 

When Profile15 begins:
	say "Beginning Profile 15";

[end of Profile 155]
Chapter 16 - Profile 16

Profile16 is a scene. Profile16 begins when Profile is 16. 

When Profile16 begins:
	say "Beginning Profile 16";

[end of Profile 166]
