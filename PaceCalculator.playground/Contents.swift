import UIKit

//Pace Calculator
let raceDistance : Double = 5
let timeElapsed : Double = 6.25
let distanceTraveled : Double = 1

let pace = (timeElapsed / distanceTraveled)
let remainingTime = (pace * (raceDistance - distanceTraveled))
let totalTime = (remainingTime + timeElapsed)

print("At the current pace, it will take an additional", remainingTime, "minutes to finish the race")
print("At the current pace, the total time will be", totalTime, "minutes for the", raceDistance, "kilometers")


//Grade Point Avg. Calculator
let currentGPA : Double = 2.8
let targetGPA : Double = 3.0
let currentCredits : Double = 25
let addCredits : Double = 15

let avgCreditGPA = ((targetGPA * (currentCredits + addCredits)) - (currentGPA * currentCredits)) / addCredits
//find out how to calculate

print("To achieve a target GPA of", targetGPA, "the GPA for the next", addCredits, "credits needs to be", avgCreditGPA, " or higher.")



//Resturant Check Calculator
var mealTotal : Double = 142.42
let serviceDescription : String = "excellent"
var tipPercentage : Double = 0.0

if (mealTotal <= 50) {
    mealTotal -= 10
} else if (mealTotal < 100) {
    mealTotal -= 20
} else {
    mealTotal *= 0.7
}

if (serviceDescription == "so-so") {
    tipPercentage += 1.1
} else if (serviceDescription == "good") {
    tipPercentage += 1.15
} else if (serviceDescription == "excellent") {
    tipPercentage += 1.2
} else if (serviceDescription == "superior") {
    tipPercentage += 1.25
}

print("Total :", mealTotal, " , tip = ", (tipPercentage - 1) * 100)
