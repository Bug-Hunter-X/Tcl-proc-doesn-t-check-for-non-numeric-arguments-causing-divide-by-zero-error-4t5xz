proc safeProc {a b} {
    if {![string is double -strict $a] || ![string is double -strict $b]} {
        error "Arguments must be numeric" 
    }
    if {$a == 0} {
        error "Cannot divide by zero" 
    } 
    return [expr {$b / $a}]
}
