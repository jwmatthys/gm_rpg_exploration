if (current_message < 0) exit
    
var _str = messages[current_message].msg

if (current_char < string_length(_str))
{
    current_char += char_speed * (1 + keyboard_check(input_key))
    draw_message = string_copy(_str, 0, current_char)
}
else if (keyboard_check(input_key))
{
    current_message++
    if (current_message >= array_length(messages))
        {
            if (next_room)
            {
                var _switcher = instance_create_depth(0,0,0,obj_room_switcher)
                room_goto_next()  
            }
            else instance_destroy()
 
        } 
    else current_char = 0 
}