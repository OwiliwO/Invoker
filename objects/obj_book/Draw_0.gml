/// @description Визуализация


draw_self();

if (state == "pause") {
    draw_set_alpha(1 - page_transition);
    
    draw_page(current_page, 0, 0);
    
    if (page_transition > 0 && current_page + 1 < max_pages && pages[current_page + 1] == 1) {
        draw_set_alpha(page_transition);
        draw_page(current_page + 1, 0, 0);
    }
    
    draw_set_alpha(1);
}
















