function create_dialog(_messages){

    if (instance_exists(obj_dialogue)) return
        
    var _inst = instance_create_depth(0,0,0, obj_dialogue)
    _inst.messages = _messages
    _inst.current_message = 0
}

char_colors = {
    "Congrats" : c_yellow,
    "Cross" : c_yellow,
    "Pickle" : c_green,
    "Petal" : c_red
}

welcome_dialogue = [
{
    name: "Cross",
    msg: "Welcome to the Caves of Altimera."
},
{
    name: "Pickle",
    msg: "What is this place?"
},
{
    name: "Cross",
    msg: "You don't know? You've found yourself in a dangerous situation my friend."
},
{
    name: "Pickle",
    msg: "The last thing I remember I was opening the front door of my house..."
},
{
    name: "Cross",
    msg: "Well you must have angered some powerful people to have ended up here."
},
{
    name: "Pickle",
    msg: "Is there a way out?"
},
{
    name: "Cross",
    msg: "I don't know, but if there is, it must be through the cave."
}
]

petal_dialogue = [
{
    name: "Petal",
    msg: "I'm too frightened to go in there!"
},
{
    name: "Pickle",
    msg: "Why? What's in there?"
},
{
    name: "Petal",
    msg: "I don't know, but I've heard terrible growls and large creatures moving around."
}
]

room1_end = [
{
    name: "Cross",
    msg: "You made it through the first section of the cave! I knew there was something special about you!"
},
{
    name: "Pickle",
    msg: "You? How did you get here?"
},
{
    name: "Cross",
    msg: "Here, let me show you the entrance to the next section of the cave."
}
]
