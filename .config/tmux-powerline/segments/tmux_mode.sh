# Indicator of pressing TMUX prefix, copy and insert modes.

insert_mode_text="INS"
copy_mode_text="COP"

prefix_pressed_text="🌈"
normal_mode_text="⬛️"
separator=" "

run_segment() {
        prefix_indicator="#{?client_prefix,${prefix_pressed_text},${normal_mode_text}}"
        normal_or_copy_indicator="#{?pane_in_mode,${copy_mode_text},${insert_mode_text}}";
        echo $prefix_indicator${separator}$normal_or_copy_indicator
        return 0
}
