//
//  ViewController.swift
//  swipeGesture
//
//  Created by Hamza Mustafa on 15/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    let centerView = UIView()
    let centerLable = UILabel()
    
    let swipeUp = UISwipeGestureRecognizer()
    let swipeDown = UISwipeGestureRecognizer()
    let swipeRight = UISwipeGestureRecognizer()
    let swipeLeft = UISwipeGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    func setupUI() {
        centerView.backgroundColor = .red
        centerView.layer.masksToBounds = true
        centerView.layer.cornerRadius = 20
        centerView.frame = CGRect(x: 16, y: 200, width: self.view.frame.width-32, height: 400)
        self.view.addSubview(centerView)
        
        centerLable.text = "Swipe Me"
        centerLable.textColor = UIColor.white
        centerLable.textAlignment = .center
        centerLable.font = UIFont.boldSystemFont(ofSize: 30)
        centerLable.frame = CGRect(x: 15, y: 15, width: self.view.frame.width-32, height: 385)
        self.centerView.addSubview(centerLable)
        
        swipeUp.direction = .up
        swipeDown.direction = .down
        swipeLeft.direction = .left
        swipeRight.direction = .right
        
        self.centerView.addGestureRecognizer(swipeUp)
        self.centerView.addGestureRecognizer(swipeDown)
        self.centerView.addGestureRecognizer(swipeLeft)
        self.centerView.addGestureRecognizer(swipeRight)
        
        swipeUp.addTarget(self, action: #selector(Swipe(sender:)))
        swipeDown.addTarget(self, action: #selector(Swipe(sender:)))
        swipeLeft.addTarget(self, action: #selector(Swipe(sender:)))
        swipeRight.addTarget(self, action: #selector(Swipe(sender:)))
    }
    
    @objc func Swipe(sender:UISwipeGestureRecognizer) {
        switch sender.direction {
        case .up:
            centerLable.text = "Direction up"
            centerView.backgroundColor = .purple
        case .down:
            centerLable.text = "Direction down"
            centerView.backgroundColor = .darkGray
        case .left:
            centerLable.text = "Direction left"
            centerView.backgroundColor = .green
        case .right:
            centerLable.text = "Direction right"
            centerView.backgroundColor = .blue
        default:
            centerLable.text = "nothing"
        }
    }
}
