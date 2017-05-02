move_towards_point(objPlayer.x,objPlayer.y,3);
image_angle = direction;

if(hp<1){
	audio_sound_pitch(sndDeath,random_range(0.8,1.2));
	audio_play_sound(sndDeath,0,0);
	with(objScore){thescore += 5;}
	instance_destroy();
}