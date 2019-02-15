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

