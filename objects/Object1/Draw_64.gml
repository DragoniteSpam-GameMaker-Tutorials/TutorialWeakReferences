draw_set_font(font_game);

draw_text(32, 32, "Weak ref alive? " + string(weak_ref_alive(reference_to_instance)));

if (keyboard_check_pressed(vk_space)) {
    instance = undefined;
}


if (!weak_ref_alive(reference_to_instance)) {
    if (surface_exists(reference_to_instance.surface_to_free)) {
        surface_free(reference_to_instance.surface_to_free);
        show_debug_message("The weak ref has died and the surface has been freed!");
    }
}
