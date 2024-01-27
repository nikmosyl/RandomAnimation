//
//  ViewController.swift
//  RandomAnimation
//
//  Created by nikita on 26.01.24.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet private var animationView: SpringView!
    
    @IBOutlet private var presentLabel: UILabel!
    @IBOutlet private var curveLabel: UILabel!
    @IBOutlet private var forceLabel: UILabel!
    @IBOutlet private var durationLabel: UILabel!
    @IBOutlet private var delayLabel: UILabel!
    
    private var randomAnimation = StorageManager.shared.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAnimationView()
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        updateAnimationView()
        
        animationView.animation = randomAnimation.animation
        animationView.curve = randomAnimation.curve
        animationView.force = randomAnimation.force
        animationView.duration = randomAnimation.duration
        animationView.delay = randomAnimation.delay
        
        animationView.animate()
        
        randomAnimation = StorageManager.shared.getRandomAnimation()
        
        sender.setTitle("Run \(randomAnimation.animation)", for: .normal)
    }
    
    private func updateAnimationView() {
        presentLabel.text = "present: " + randomAnimation.animation
        curveLabel.text = "curve: " + randomAnimation.curve
        forceLabel.text = String(format: "force: %.02f", randomAnimation.force)
        durationLabel.text = String(format: "duration: %.02f", randomAnimation.duration)
        delayLabel.text = String(format: "delay: %.02f", randomAnimation.delay)
    }
    
    
}

