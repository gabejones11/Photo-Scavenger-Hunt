//
//  Task.swift
//  PhotoScavengerHunt
//
//  Created by Gabe Jones on 3/17/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }
    
    init(title: String, description: String){
        self.title = title
        self.description = description
    }
    
    func set(_ image: UIImage, with location: CLLocation){
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockTasks: [Task] {
        return [
            Task(title: "Favorite place that you visited 🏝", description: "Where is the your favorite place that you visited?"),
            Task(title: "Favorite person 👦🏻", description: "Pick a picture of your favorite person"),
            Task(title: "A picture of a sports game 🏀", description: "Pick a picture of a sports game"),
            Task(title: "A picture of you favorite food 🍕", description: "Pick a picture of your favorite food")
        ]
    }
}
