
global.Player1X = x
global.Player1Y = y
pad_num=0;
pad = 0;

gamepad_set_axis_deadzone(pad, 0.2);       // Set the "deadzone" for the axis
gamepad_set_button_threshold(pad, 0.05);    // Set the "threshold" for the triggers

