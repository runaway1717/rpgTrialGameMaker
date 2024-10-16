/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_Menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, button_text);


// reset the alignments to their default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);