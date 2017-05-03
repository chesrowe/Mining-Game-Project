///scr_worker_randomize_work_time(inst)
//Randomizes a worker's workTime based on the given instance

var inst = argument[0];
var extraRandom = (irandom(inst.workTimeBase / 3)) - irandom(inst.workTimeBase / 3);

workTime = inst.workTimeBase + extraRandom;
