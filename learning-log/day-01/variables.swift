import Foundation

let Name = "Jason" // string

var _age = 19 // int 
var _gpa = 3.7 // float
var _inSchool = true // boolean 

// a let variable as a descriptive boolean
let qualifies = _inSchool && _age < 24 && _gpa > 2.5

//print the variables of interest
print(Name, _age, _gpa)
/*
if qualifies approve
else don't
just simplified
*/
print(qualifies ? "Yearly Study funding approved" : "Yearly Study funding not approved")
