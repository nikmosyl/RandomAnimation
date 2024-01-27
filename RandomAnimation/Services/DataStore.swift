//
//  DataStore.swift
//  RandomAnimation
//
//  Created by nikita on 27.01.24.
//

final class DataStore {
    fileprivate static let shared = DataStore()
    
    let animations = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing"
    ]
    
    let curves = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
    ]
    
    private init() {}
}


final class StorageManager {
    static let shared = StorageManager()
    private let dataStore = DataStore.shared
    
    private init() {}
    
    func getRandomAnimation() -> Animation {
        Animation(
            animation: dataStore.animations.randomElement() ?? "",
            curve: dataStore.curves.randomElement() ?? "",
            force: Double.random(in: 1...5),
            duration: Double.random(in: 1...3),
            delay: Double.random(in: 0.1...1)
        )
    }
}




