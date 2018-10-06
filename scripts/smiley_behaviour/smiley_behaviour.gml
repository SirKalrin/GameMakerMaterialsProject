if (IsAlive) {
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
			sprite_index = spr_Smiley_Sad // Switch sprite
			show_debug_message("Happy: " + string(IsHappy))
		}
		else if (Happiness >= Happiness_Threshold && !IsHappy) {
			IsHappy = true;
			sprite_index = spr_Smiley_Happy // Switch sprite
			show_debug_message("Happy: " + string(IsHappy))
		}
		else if (current_second - time > Cooldown) {
			Happiness -= DecreaseAmount
			time = current_second
			show_debug_message("Timer reset to: " + string(Cooldown) + 
			"\nHappiness lowered to: " + string(Happiness))
		}
	} 
}