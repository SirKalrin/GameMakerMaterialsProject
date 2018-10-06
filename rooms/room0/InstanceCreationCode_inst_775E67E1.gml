// Dette er en kommentar. Kommentarer starter med "//". 
// - Det fortæller computeren at det ikke er kode, som den skal køre igennem.

// Man skriver en kommentar til sin kode, så man får et bedre overblik kan overskue hvad den gør.



// Smiley Stats
Name = "Mr. Smileyface" // Dette er en variabel, som vi har valgt at kalde "Navn". Den indeholder datatypen "String". 
						// String er betegnelsen for en hvilken som helst form for tekstværdig. Når man skriver
						// Noget i gåseøjne ("") fortæller man computeren at man gemmer en string i hukkommelsen. (RAM)

Birthdate = date_current_datetime();	// Denne variabel indeholder et date tidspunkt (Når scriptet bliver startet)
										// Vi har valgt at kalde den "Birthdate" fordi det er her at smileyens "liv" starter.

Age = date_get_minute(date_current_datetime()) - date_get_minute(Birthdate)
// Ovenfor regner vi alderen ud på smileyen, og gemmer den i variablen "Age"
// Fordi facit bliver et heltal (Et tal som ikke har nogen decimaler), 
// bliver datatypen en "Integer" (Heltal på engelsk)

Happiness = 100.0; // Denne variabel indeholder et decimal tal med få decimaler. Derfor er datatypen en "Float"

IsAlive = true; // Denne variabel er af datatyoen "Boolean". En boolean kan indeholde en sand eller falsk værdig.
				// (true eller false). I dette tilfælde er det en sand værdig. Computeren registrerer en boolean¨
				// som 0 eller 1. Dette bliver i mange sammenhænge også kaldt et "Flag" - en betegnelse for
				// noget der trigger et event/en handling.

IsHappy = true;

// Happiness related variables initialization
Happiness_Threshold = 50;
DecreaseAmount = 30
Cooldown = 10;
time = current_second