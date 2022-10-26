//
//  Story.swift
//  Destiny
//
//  Created by Rishab Jadhav on 10/10/22.
//

import Foundation


struct Story {
    let title: String
    let choice1: String
    let choice1index: Int
    let choice2: String
    let choice2index: Int
    
    init(title: String, choice1: String, choice1index: Int, choice2: String, choice2index: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1index = choice1index
        self.choice2 = choice2
        self.choice2index = choice2index
    }
}

struct Destiny {
    var currentStory : Int = 0
    let stories = [
        
    //0
    Story(title: "You've just robbed the Bellagio, the biggest casino in Las Vegas, making away with over 1.4 million in cash. It's up to you to escape with the cash without getting caught. You have the choice between two getaway vehicles.",
    choice1: "Dodge Charger Hellcat", choice1index: 1, choice2: "Toyota Prius", choice2index: 10),
    
    //1
    Story(title: "You enter the Charger Hellcat and start the car. You punch the throttle and drive out of the parking garage. You make a sharp left hearing sirens in the distance. Approaching the entrance ramp to the Las Vegas Freeway (I-15 South towards Los Angeles). Do you get on the freeway?", choice1: "Stay on internal roads for now.", choice1index: 2, choice2: "Get on the freeway.", choice2index: 2),
    
    //2
    Story(title: "You get on the freeway and floor it. As you pass traffic at nearly double the speed limit, you begin to hear sirens getting louder. A helicopter begins to follow you. You believe that you were identified.", choice1: "Stay on the freeway and keep going.", choice1index: 3, choice2: "Get off the freeway.", choice2index: 4),
    
    //3
    Story(title: "You stay on the freeway, and you hear the sirens fade into the distance. You've outran the LVPD, but the chase isn't over just yet. The Nevada Highway Patrol and Nevada State Police Department are still searching for you. As you approach the city of Sloan, Nevada, you realize the Charger is running low on gas. It's still good for another 40 miles.", choice1: "Pull over in Sloan and refuel.", choice1index:7, choice2:"Keep going in search of a smaller town to refuel.", choice2index: 4),
    
    //4
    Story(title: "With 3 miles left, you barely reach the small town of Jean to refuel. News of a robber driving a black Dodge Charger Hellcat hasn't broke in this town. You successfully refuel, change clothes, and prepare for the trip ahead. You see a small motel in the town, and realize it's already 2AM, that a night's rest may be needed.", choice1: "Stay at the motel for the night.", choice1index:5, choice2:"Continue driving towards Los Angeles.", choice2index: 6),
    
    //5
    Story(title: "You wake up to banging on your motel door and the sound of loud sirens. A SWAT Team and State Patrol break down your door and promptly arrest you. Someone recognized your Charger and reported it to state police. Motel staff confirmed your identity and room number. You are charged with armed robbery, evasion of the authorities, reckless endangerment, along with many other charges. You are given 4 consecutive life sentences.", choice1: "The", choice1index:5, choice2:"End", choice2index:5),
    
    //6
    Story(title: "You continue driving at high speed to get to California as fast as possible. With the roads being empty and barren, you make it to a small outer city near Bakersfield where your crew is waiting for you. You successfully make away with the money and split it amongst your crew. Your heist of the Bellagio Casino and Hotel goes down in infamy as the greatest casino robbery ever.", choice1: "The", choice1index: 6, choice2: "End", choice2index: 6),
    
    //7
    Story(title: "You enter the small city of Sloan. You realize that your car may have been identified by those in the city. As you refuel at a gas station, you are recognized by a man who threatens to call the police. He offers you a deal: $500,000 in cash in exchange for him to turn a blind eye.", choice1: "Take the deal.", choice1index: 8, choice2: "Reject the deal.", choice2index: 9),
    
    //8
    Story(title: "You give the man $500,000 in hush money and he leaves silently without notifying the authorities. As you leave at a relaxed pace, you are identified by an officer and his sirens turn on. You cannot escape on the road due to incoming traffic and forced to surrender. You are detained and later charged with armed robbery, evasion of the authorities, reckless endangerment, along with many other charges. You are given 4 consecutive life sentences.", choice1: "The", choice1index: 8, choice2: "End", choice2index: 8),
    
    //9
    Story(title: "You outright reject the man and he pulls out his phone. You run to your car and floor it. As you merge onto the freeway towards California, you notice a police blockade has already been set up. You quickly enter the freeway on the off-ramp and gun the throttle. After the sirens fade into the distance and you once again get away. You make it to a small outer city near Bakersfield. You successfully make away with the money and split it amongst your crew. Your heist of the Bellagio Casino and Hotel goes down in infamy as the greatest casino robbery ever.", choice1: "The", choice1index: 9, choice2: "End", choice2index: 9),
    
    //10
    Story(title: "You enter the Toyota Prius and notice that the car has 550 miles till empty, more than enough to make it to the cash dropoff spot. As you leave the parking garage and are at a stoplight, you hear sirens behind you.", choice1: "Blend into traffic", choice1index: 12, choice2: "Floor it and try to escape.", choice2index: 11),
    
    //11
    Story(title: "You swerve out of your lane and desperately try to escape, but you cannot escape. Turns out officers were responding to another crime in progress, and you outed yourself. You are charged with armed robbery, evasion of the authorities, reckless endangerment, along with many other charges. You are given 4 consecutive life sentences.", choice1: "The", choice1index: 11, choice2: "End", choice2index: 11),
    
    //12
    Story(title: "As you blend in, you realize cops are responding to another crime in progress. This also lets you know that nobody saw you get into the Prius. You see the entire police force in front of the Bellagio. You leisurely drive towards the dropoff spot. On the way there, you hear the engine making a weird noise and the check-engine light comes on.", choice1: "Pull over and check out the engine", choice1index: 13, choice2: "Keep going", choice2index: 14),
    
    //13
    Story(title: "You pull over and realize that one of the coil packs fell out of the housing. You put it back in and keep going towards the dropoff spot. Once you make it to a small outer city near Bakersfield, you successfully make away with the money and split it amongst your crew. Your heist of the Bellagio Casino and Hotel goes down in infamy as the greatest casino robbery ever.", choice1: "The", choice1index: 13, choice2: "End", choice2index: 13),
    
    //14
    Story(title: "You keep driving despite the weird noise. Eventually the battery shuts off due to the alternator not having enough energy to keep the power on. The car comes to a halt. You check under the hood and realize that one of the coil packs fell out; a ten second fix. Now your car battery is dead and you cannot start the car. You try to pull someone over to get a jumpstart. A man pulls over and offers you a jumpstart, but he looks suspicious. He left his vehicle on.", choice1: "Run to his car and steal it", choice1index: 15, choice2: "Allow him to give you a jumpstart", choice2index: 16),
    
    //15
    Story(title: "You steal his car, but leave the money. From the laptop in the car and the sound of what sounds like dispatch radio, you realize the man is an undercover police officer in an unmarked police car. You make it to another town and call your crew to pick you up. You make it away but do not recover the money.", choice1: "The", choice1index: 15, choice2: "End", choice2index: 15),
    
    //16
    Story(title: "You allow the man to give you a jumpstart, but he pulls out a gun. Turns out the man is an undercover police officer in an unmarked police car. You are promptly arrested and later charged with armed robbery, evasion of the authorities, reckless endangerment, along with many other charges. You are given 4 consecutive life sentences.", choice1: "The", choice1index: 16, choice2: "End", choice2index: 16),
    
    ]
    
    func getTitle() -> String {
        return stories[currentStory].title
    }
    
    func getChoice1() -> String {
        return stories[currentStory].choice1
    }
    
    func getChoice2() -> String {
        return stories[currentStory].choice2
    }
}
