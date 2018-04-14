//
//  MetronomeAnimation.swift
//  Metronome
//
//  Created by Ben on 4/14/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class MetronomeAnimation: UIView {
    
    //MARK: - Properties
    var animSpeed: Float = 0.1
    
    func rotateView() {
        var rotationAnimation = CABasicAnimation()
        rotationAnimation = CABasicAnimation.init(keyPath: "transform.rotation")
        rotationAnimation.fromValue = -Double.pi / 4
        rotationAnimation.toValue = Double.pi / 4
//        rotationAnimation.duration = 0.6
        rotationAnimation.autoreverses = true
//        rotationAnimation.isCumulative = true
        rotationAnimation.repeatCount = Float.greatestFiniteMagnitude
        rotationAnimation.speed = animSpeed
        self.layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
}
