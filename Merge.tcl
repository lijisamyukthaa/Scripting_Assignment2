# Definition for singly-linked list.
# type Node {value, next}

proc merge_two_lists {l1 l2} {
    set dummy [Node new]
    set current $dummy

    while {$l1 ne "" && $l2 ne ""} {
        if {[lindex $l1 0] < [lindex $l2 0]} {
            lappend current [lindex $l1 0]
            set l1 [lrange $l1 1 end]
        } else {
            lappend current [lindex $l2 0]
            set l2 [lrange $l2 1 end]
        }
    }

    # If one list is empty, append the other list
    if {$l1 ne ""} {
        set current [concat $current $l1]
    }
    if {$l2 ne ""} {
        set current [concat $current $l2]
    }

    return $current
}
