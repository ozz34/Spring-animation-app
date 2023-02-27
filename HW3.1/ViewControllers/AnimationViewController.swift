//
//  ViewController.swift
//  HW3.1
//
//  Created by Иван Худяков on 16.09.2022.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = randomAnimation.description
        }
    }

    private var randomAnimation = Animation.getAnimation()
    // MARK: - IBActions
    @IBAction func animationButton(_ sender: SpringButton) {
        animationView.animation = randomAnimation.name
        animationView.curve = randomAnimation.curve
        animationView.force = CGFloat(randomAnimation.force)
        animationView.duration = randomAnimation.duration
        animationView.delay = randomAnimation.delay
        animationView.animate()
        animationLabel.text = randomAnimation.description
                   
        randomAnimation = Animation.getAnimation()
        sender.setTitle("\(randomAnimation.name)", for: .normal)
    }
}
