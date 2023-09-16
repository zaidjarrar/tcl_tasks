proc reverse {inputString} {
    set words [split $inputString " "]
    set reversedWords [lreverse $words]
    set reversedString [join $reversedWords " "]
    return $reversedString
}

set input1 "TCL is a Tool Command Language"
set result1 [reverse $input1]
puts $result1 ;


set input2 "Welcome to you"
set result2 [reverse $input2]
puts $result2 ;