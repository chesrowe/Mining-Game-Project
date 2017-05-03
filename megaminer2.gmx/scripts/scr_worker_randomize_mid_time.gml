///scr_worker_randomize_mid_time(instance)
//Randomizes the middle time based on the instance

var instance = argument[0];

middleTime = instance.midTime + irandom(instance.midRandom);
