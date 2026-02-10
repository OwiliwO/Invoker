/// @description Итерация


if (current_track != -1)
{
    audio_group_set_gain(audiogroup_default, volume_of_musics, 0);
	audio_group_set_gain(Sound, volume_of_sounds, 0);
	
	if (!audio_is_playing(current_track))
    {
        var _new_track_index = irandom(3);
        var _next_track = music_tracks[_new_track_index];
        
        current_track = audio_play_sound(_next_track, 100, 0);
    }
}