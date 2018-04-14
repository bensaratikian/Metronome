//
//  ViewController.swift
//  Metronome
//
//  Created by Ben on 4/14/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var arrowImage: MetronomeAnimation!
    @IBOutlet weak var animSlider: UISlider!
    @IBOutlet weak var startButton: UIButton!
    
    var checkRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: Actions
    @IBAction func viewToRotate() {
        self.arrowImage.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        self.arrowImage.rotateView()
        if checkRunning {
            self.startButton.setImage(#imageLiteral(resourceName: "start"), for: .normal)
            checkRunning = !checkRunning
            self.arrowImage.animSpeed = self.animSlider.value
        } else {
            checkRunning = !checkRunning
            self.startButton.setImage(#imageLiteral(resourceName: "stop"), for: .normal)
            self.arrowImage.animSpeed = 0
        }
    }
    
    @IBAction func metronomeSliderAction(_ sender: UISlider) {
        checkRunning = false
        self.arrowImage.animSpeed = sender.value
    }
}

