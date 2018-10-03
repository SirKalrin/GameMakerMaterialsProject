// Dette er en kommentar. Kommentarer starter med "//". 
// - Det fortæller computeren at det ikke er kode, som den skal køre igennem.

// Man skriver en kommentar til sin kode, så man får et bedre overblik kan overskue hvad den gør.

//Smiley Stats
Name = "Mr. Smileyface" // Dette er en variabel, som vi har valgt at kalde "Navn". Den indeholder datatypen "String". 
						// String er betegnelsen for en hvilken som helst form for tekstværdig. Når man skriver
						// Noget i gåseøjne ("") fortæller man computeren at man har gemt en string i hukkommelsen.

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
Happiness_Threshold = 50;
TimerStart = 30; // Timer not working properly or happiness atm!!!!!!
timer = TimerStart * room_speed;
show_debug_message("Timer set to: " + string(timer))

while (IsAlive) {
	if (Happiness <= 0.0) {
		IsAlive = false;
		instance_deactivate_all(false);
	}
	else {
		if (date_get_minute(date_current_datetime()) > Age) {
			Age = date_get_minute(date_current_datetime() - Age);
		}
		if (Happiness < Happiness_Threshold && IsHappy) {
			IsHappy = false;
			object_set_sprite(0, spr_Smiley_Sad);
		}
		else if (Happiness >= Happiness_Threshold && !IsHappy) {
			IsHappy = true;
			object_set_sprite(0, spr_Smiley_Happy);
		}
		if (timer > 0) {
			timer--;
		}
		else if (timer <= 0) {
			Happiness -= 51;
			timer = TimerStart * room_speed;
		}
	} 
}
						
