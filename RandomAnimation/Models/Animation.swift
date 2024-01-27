//
//  Animation.swift
//  RandomAnimation
//
//  Created by nikita on 27.01.24.
//

struct Animation {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    init(animation: String, curve: String, force: Double, duration: Double, delay: Double) {
        self.animation = animation
        self.curve = curve
        self.force = force
        self.duration = duration
        self.delay = delay
    }
}
