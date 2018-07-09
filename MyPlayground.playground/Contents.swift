//: Playground - noun: a place where people can play

import UIKit

// player informations
var player1 : [String : String] = [
    "name" : "Jill Tanner",
    "height" : "36",
    "soccerExperience" : "true",
    "guardian" : "Clara Tanner"
]

var player2 : [String : String] = [
    "name" : "Joe Smith",
    "height" : "42",
    "soccerExperience" : "true",
    "guardian" : "Jim and Jan Smith"
]

var player3 : [String : String] = [
    "name" : "Bill Bon",
    "height" : "43",
    "soccerExperience" : "true",
    "guardian" : "Sara and Jenny Bon"
]

var player4 : [String : String] = [
    "name" : "Eva Gordon",
    "height" : "45",
    "soccerExperience" : "false",
    "guardian" : "Wendy and Mike Gordon"
]

var player5 : [String : String] = [
    "name" : "Matt Gill",
    "height" : "40",
    "soccerExperience" : "false",
    "guardian" : "Charles and Sylvia Gill"
]


var player6 : [String : String] = [
    "name" : "Kimmy Stein",
    "height" : "41",
    "soccerExperience" : "false",
    "guardian" : "Bill and Hillary Stein"
]

var player7 : [String : String] = [
    "name" : "Sammy Adams",
    "height" : "45",
    "soccerExperience" : "false",
    "guardian" : "Jeff Adams"
]

var player8 : [String : String] = [
    "name" : "Karl Saygan",
    "height" : "42",
    "soccerExperience" : "true",
    "guardian" : "Heather Bledsoe"
]

var player9 : [String : String] = [
    "name" : "Suzane Greenberg",
    "height" : "44",
    "soccerExperience" : "true",
    "guardian" : "Henrietta Dumas"
]

var player10 : [String : String] = [
    "name" : "Sal Dali",
    "height" : "41",
    "soccerExperience" : "false",
    "guardian" : "Gala Dali"
]

var player11 : [String : String] = [
    "name" : "Joe Kavalier",
    "height" : "39",
    "soccerExperience" : "false",
    "guardian" : "Sam and Elaine Kavalier"
]

var player12 : [String : String] = [
    "name" : "Ben Finkelstein",
    "height" : "44",
    "soccerExperience" : "false",
    "guardian" : "Aaron and Jill Finkelstein"
]

var player13 : [String : String] = [
    "name" : "Diego Soto",
    "height" : "41",
    "soccerExperience" : "true",
    "guardian" : "Robin and Sarika Soto"
]

var player14 : [String : String] = [
    "name" : "Chloe Alaska",
    "height" : "47",
    "soccerExperience" : "false",
    "guardian" : "David and Jamie Alaska"
]

var player15 : [String : String] = [
    "name" : "Arnold Willis",
    "height" : "43",
    "soccerExperience" : "false",
    "guardian" : "Claire Willis"
]


var player16 : [String : String] = [
    "name" : "Phillip Helm",
    "height" : "44",
    "soccerExperience" : "true",
    "guardian" : "Thomas Helm and Eva Jones"
]

var player17 : [String : String] = [
    "name" : "Les Clay",
    "height" : "42",
    "soccerExperience" : "true",
    "guardian" : "Wynonna Brown"
]

var player18 : [String : String] = [
    "name" : "Herschel Krustofski",
    "height" : "45",
    "soccerExperience" : "true",
    "guardian" : "Hyman and Rachel Krustofski"
]


// players array hold all the information about the player
var players = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]

// divide the player into teams
var Dragons = [[String : String]]()
var Sharks = [[String : String]]()
var Raptors = [[String : String]]()  
var counter : Int = 0
var counterExperience: Int = 0
var counterNotExperience: Int = 0
 // calculating how many soccerExperience player
for player in players {
    if player["soccerExperience"] == "true" {
        counterExperience += 1
    }
}
counterNotExperience = players.count - counterExperience
var counterD = 0
var counterS = 0
var counterR = 0

 // appending the soccerExperience equaly to the teams
for player in players {
    if player["soccerExperience"] == "true" && counterD < counterExperience/3 {
        counterD += 1
        Dragons.append(player)
    }
    else if player["soccerExperience"] == "true" && counterS < counterExperience/3 {
        counterS += 1
        Sharks.append(player)
    }
    else if player["soccerExperience"] == "true" && counterR < counterExperience/3 {
        counterR += 1
        Raptors.append(player)
    }
}

counterD = 0
counterS = 0
counterR = 0

for player in players {
    if player["soccerExperience"] == "false" && counterD < counterNotExperience/3 {
        counterD += 1
        Dragons.append(player)
    }
    else if player["soccerExperience"] == "false" && counterS < counterNotExperience/3 {
        counterS += 1
        Sharks.append(player)
    }
    else if player["soccerExperience"] == "false" && counterR < counterNotExperience/3 {
        counterR += 1
        Raptors.append(player)
    }
}


var letters : [String] = []
var name : String
var guardian : String


for player in Dragons {
    name = player["name"]!
    guardian = player["guardian"]!
    letters.append("Hello \(guardian) your child \(name) will play with Dragons at March 17, 1pm")
    
}


for player in Sharks {
    name = player["name"]!
    guardian = player["guardian"]!
    letters.append("Hello \(guardian) your child \(name) will play with Dragons at March 17, 3pm")
    
}

for player in Raptors {
    name = player["name"]!
    guardian = player["guardian"]!
    letters.append("Hello \(guardian) your child \(name) will play with Dragons at March 18, 1pm")
    
}

for letter in letters {
print(letter)
}







