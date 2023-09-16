proc sortList  {L} {
    set n [llength $L]
    for {set i 1} {$i < $n} {incr i} {
        set key [lindex $L $i]
        set j [expr $i - 1]

        while {$j >= 0 && [lindex $L $j] > $key} {
            set L [lreplace $L $j+1 $j+1 [lindex $L $j]]
            incr j -1
        }
        set L [lreplace $L $j+1 $j+1 $key]
    }
    return $L
}


set randomList {3 6 8 7 0 1 4 2 9 5}
set sortedList [sortList $randomList]
puts $sortedList ;