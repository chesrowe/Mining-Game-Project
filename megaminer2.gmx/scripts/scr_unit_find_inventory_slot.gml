///scr_unit_find_inventory_slot();

for (i = 0; i <= 10; i++;){
    if (is_real(inv[i,0]) && inv[i,0] == -1){
        return i;
        break;
    }
}
