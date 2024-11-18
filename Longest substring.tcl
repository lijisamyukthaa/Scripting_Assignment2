proc length_of_longest_substring {s} {
    set char_map {}
    set left 0
    set max_len 0
    
    for {set right 0} {$right < [string length $s]} {incr right} {
        set char [string index $s $right]
        
        # If character is repeated, move the left pointer
        if {[dict exists $char_map $char]} {
            set left [expr {max($left, [dict get $char_map $char] + 1)}]
        }
        
        dict set char_map $char $right
        set max_len [expr {max($max_len, $right - $left + 1)}]
    }

    return $max_len
}
