//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 박건희 on 2024/06/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slideView: UIImageView!
    @IBOutlet var slider: UISlider!
    @IBOutlet var level: UILabel!
    @IBOutlet var speedButton: UIButton!
    
    @IBAction func startStopBtn(){
        if (slideView.isAnimating){
            speedButton.setTitle("Start", for: .normal)
            slideView.stopAnimating()
        }else{
            speedButton.setTitle("Stop", for: .normal)
            slideView.startAnimating()
        }
    }
    @IBAction func changeSpeed(sender: UISlider){
        level.text = String(format: "%.1f", sender.value)
        slideView.animationDuration = Double(sender.value)
        speedButton.setTitle("Stop", for: .normal)
        slideView.startAnimating()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageList = [UIImage(named: "1.jpg")!,
                         UIImage(named: "2.jpg")!,
                         UIImage(named: "3.jpg")!,
                         UIImage(named: "4.jpg")!,
                         UIImage(named: "5.jpg")!,
                         UIImage(named: "6.jpg")!,
                         UIImage(named: "7.jpg")!,
                         UIImage(named: "8.jpg")!,
                         UIImage(named: "9.jpg")!,
                         UIImage(named: "10.jpg")!,
                         UIImage(named: "11.jpg")!,
                         UIImage(named: "12.jpg")!,
                         UIImage(named: "13.jpg")!,
                         UIImage(named: "14.jpg")!,
                         UIImage(named: "15.jpg")!,
        ]
        slideView.animationImages = imageList
        slider.value = 7.0
        slider.maximumValue = 15.0
        slider.minimumValue = 0.0
        slideView.animationDuration = 7.0
        slideView.startAnimating()
        // Do any additional setup after loading the view.
    }


}

