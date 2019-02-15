"Temple of Time" by Joseph DeLuca

Chapter 0 - Setup 

Section 0 - The Map

The Temple of Time is a room. 
North Side is a room. 
East Side is a room. 
South Side is a room. 
West Side is a room.
Bell Tower is a room.
Roof is a room.

Bell Tower is up from the Temple of Time.
Roof is up from the Bell Tower, up from the North Side, up from the South Side, up from the East Side, up from the West Side. 
North Side is north of Temple of Time, north of the Roof, north of East Side, and north of West Side.
East Side is east of Temple of Time, east of the Roof, east of the South Side, and east of the North Side.
West Side is west of Temple of Time, west of the Roof, west of the South Side, and west of North Side.  
South Side is south of Temple of Time, south of the Roof, south of the West Side, south of the East Side.

Chapter  1 - Questions 

[The Beginning]
Profile is a a number which varies. Profile is 0.
Heroism is a number which varies. Heroism is 0. 

[INTRODUCTION PASSAGE]

When play begins:
	let Q1 be 0; 
	let Q2 be 0; 
	let Q3 be 0; 
	let Q4 be 0;
	say "Please answer the following yes/no questions.[line break][line break]";
	[Question 1]
	say "Did you save your friends?";
	if the player consents: 
		now Q1 is 1; 
		increase Heroism by 1; 
	[Question 2]
	say "Did you prove yourself?";
	if the player consents:
		now Q2 is 10;
		increase Heroism by 1;
	[Question 3]
	say "Did you help others along your journey?"; 
	if the player consents:
		now Q3 is 100;
		increase Heroism by 1;
	[Select Profile] 
	let P be Q1 + Q2 + Q3;
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
	say "[line break]Link has [Heroism] heroism";
	
Chapter 2 - Scenes

Section 0 - Declaration of Scenes

][Scene-switch is a number that varies. Scene-switch is 0.]

Introduction is a Scene. Introduction begins when play begins.
[Endings for Introduction.....]
Introduction ends neglectfully when Profile is 1. 
Introduction ends semi-neglectfully when Profile is 2. 
Introduction ends barely-neglectfully when Profile is 3. 
Introduction ends kinda-neglectfully when Profile is 4. 
Introduction ends kinda-heroically when Profile is 5. 
Introduction ends barely-heroically when Profile is 6. 
Introduction ends semi-heroically when Profile is 7. 
Introduction ends heroically when Profile is 8. 

Profile1 is a scene. Profile1 begins when Introduction ends neglectfully. 
Profile2 is a scene. Profile2 begins when Introduction ends semi-neglectfully. 
Profile3 is a scene. Profile3 begins when Introduction ends barely-neglectfully. 
Profile4 is a scene. Profile4 begins when Introduction ends kinda-neglectfully. 
Profile5 is a scene. Profile5 begins when Introduction ends kinda-heroically. 
Profile6 is a scene. Profile6 begins when Introduction ends barely-heroically. 
Profile7 is a scene. Profile7 begins when Introduction ends semi-heroically. 
Profile8 is a scene. Profile8 begins when Introduction ends heroically. 

Section 1 - Scene Rules

When Introduction Begins:
	say "Beginning Intro.";

When Profile1 Begins:
	say "Beginning Profile1.";

When Profile2 Begins:
	say "Beginning Profile2.";

When Profile3 Begins:
	say "Beginning Profile3.";

When Profile4 Begins:
	say "Beginning Profile4.";
	
When Profile5 Begins:
	say "Beginning Profile5.";
	
When Profile6 Begins:
	say "Beginning Profile6.";
	
When Profile7 Begins:
	say "Beginning Profile7.";
	
When Profile8 Begins:
	say "Beginning Profile8.";
	


