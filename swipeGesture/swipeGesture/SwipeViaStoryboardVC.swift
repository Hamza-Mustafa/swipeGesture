//
//  SwipeViaStoryboardVC.swift
//  swipeGesture
//
//  Created by Hamza Mustafa on 15/12/2020.
//

import UIKit

class SwipeViaStoryboardVC: UIViewController {
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var directionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .up:
            directionLabel.text = "Direction up"
            centerView.backgroundColor = .purple
        case .down:
            directionLabel.text = "Direction down"
            centerView.backgroundColor = .darkGray
        case .left:
            directionLabel.text = "Direction left"
            centerView.backgroundColor = .green
        case .right:
            directionLabel.text = "Direction right"
            centerView.backgroundColor = .blue
        default:
            directionLabel.text = "nothing"
        }
    }
}
