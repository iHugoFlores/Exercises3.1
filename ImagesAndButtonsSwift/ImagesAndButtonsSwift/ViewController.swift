//
//  ViewController.swift
//  ImagesAndButtonsSwift
//
//  Created by Field Employee on 3/24/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyBoardImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageView1 = UIImageView(image: #imageLiteral(resourceName: "Navi"))
        imageView1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        let imageView2 = UIImageView(frame: CGRect(x: 120, y: 0, width: 100, height: 100))
        imageView2.image = #imageLiteral(resourceName: "Lain")
        
        let imageView3 = UIImageView()
        imageView3.frame = CGRect(x: 240, y: 0, width: 100, height: 100)
        imageView3.animationImages = [UIImage(named: "0")!,
                                     UIImage(named: "1")!,
                                     UIImage(named: "2")!,
                                     UIImage(named: "3")!,
                                     UIImage(named: "4")!,
                                     UIImage(named: "5")!,
                                     UIImage(named: "6")!,
                                     UIImage(named: "7")!,
                                     UIImage(named: "8")!,
                                     UIImage(named: "9")!]
        imageView3.animationDuration = 1.08
        imageView3.startAnimating()
        
        let imageView4 = UIImageView(image: #imageLiteral(resourceName: "OtherLain"))
        imageView4.contentMode = .scaleAspectFit
        imageView4.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(imageView1)
        self.view.addSubview(imageView2)
        self.view.addSubview(imageView3)
        self.view.addSubview(imageView4)
        
        let centerXConst = NSLayoutConstraint(item: imageView4, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let centerYConst = NSLayoutConstraint(item: imageView4, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        let heightConstraint = NSLayoutConstraint(item: imageView4, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200)
        let widthConstraint = NSLayoutConstraint(item: imageView4, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200)
        imageView4.addConstraints([heightConstraint, widthConstraint])
        NSLayoutConstraint.activate([centerXConst, centerYConst])
        
        storyBoardImg.image = #imageLiteral(resourceName: "LainBear")
    }


}

