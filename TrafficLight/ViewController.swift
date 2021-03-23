//
//  ViewController.swift
//  TrafficLight
//
//  Created by Artem Bazhanov on 23.03.2021.
//

import UIKit

enum trafficLight {
    case nonSignal
    case redSignal
    case yellowSignal
    case greenSignal
}

class ViewController: UIViewController {
    @IBOutlet weak var redSignalView: UIView!
    @IBOutlet weak var yellowSignalView: UIView!
    @IBOutlet weak var greenSignalView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var switcherTrafficLight = trafficLight.nonSignal
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redSignalView.layer.cornerRadius = redSignalView.frame.size.height / 2
        yellowSignalView.layer.cornerRadius = yellowSignalView.frame.size.height / 2
        greenSignalView.layer.cornerRadius = greenSignalView.frame.size.height / 2
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed() {
        switch switcherTrafficLight {
        case .nonSignal:
            switcherTrafficLight = trafficLight.redSignal
            redSignalView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        case .redSignal:
            redSignalView.alpha = 0.3
            switcherTrafficLight = trafficLight.yellowSignal
            yellowSignalView.alpha = 1
        case .yellowSignal:
            yellowSignalView.alpha = 0.3
            switcherTrafficLight = trafficLight.greenSignal
            greenSignalView.alpha = 1
        case .greenSignal:
            greenSignalView.alpha = 0.3
            switcherTrafficLight = trafficLight.redSignal
            redSignalView.alpha = 1
        }
    }
}

