with(other){
	hp -= 1;
	if(hp<1){
		instance_destroy();
	}
}
instance_destroy();