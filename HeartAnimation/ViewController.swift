//
//  ViewController.swift
//  HeartAnimation
//
//  Created by UW-IN-LPT0108 on 10/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heartImageView: UIImageView!
    
    var spriteImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heartImageView.image = UIImage(named: "tile00")
        
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }

    @IBAction func heartTapped(_ sender: UIButton) {
        heartImageView.animationImages = spriteImages
        heartImageView.animationDuration = 0.6
        heartImageView.animationRepeatCount = 1
        heartImageView.startAnimating()
    }
}

