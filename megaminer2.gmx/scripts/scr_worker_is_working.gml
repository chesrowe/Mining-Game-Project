///scr_worker_is_working()
//Checks to see if the worker is doing any of the following: Woodcutting, mining, farming,
//building, or upgrading

if (state == STATES_WORKER.woodcutting || state == STATES_WORKER.mining || state == STATES_WORKER.farming || state == STATES_WORKER.building || state == STATES_WORKER.upgrading){
    return true;
}else{
    return false;
}
