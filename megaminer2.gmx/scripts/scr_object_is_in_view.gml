///scr_object_is_in_view()

//Returnes whether the executing object is in view or not
var inView = 0;

if (x >= (view_xview[0]-240) && x <= (view_xview[0]+1450)){
    inView = 1;
}else{
    inView = 0;
}
return inView;
