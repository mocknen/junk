## parse_args {*}[list a b c]
## puts "a is $a"
proc parse_args {
    args
} {
    global argv
    set argc [llength $argv]
    set num_args [llength $args]

    if {$argc != $num_args} {
        puts "$num_args arguments required"
        exit 1
    }

    for {set i 0}  {$i < $argc} {incr i} {
        set arg [lindex $args $i]
        global $arg
        set $arg [lindex $argv $i]
    }
}
