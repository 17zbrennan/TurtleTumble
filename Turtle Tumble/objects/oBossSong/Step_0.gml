
if counter = 0
{
	if !audio_is_playing(sBossIntro)
		{
			audio_play_sound(sBossSong, 10, true);
			counter++;
		}
}
