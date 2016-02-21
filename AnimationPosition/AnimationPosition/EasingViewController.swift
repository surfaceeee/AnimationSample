//
//  EasingViewController.swift
//  AnimationSample
//
//  Created by mc110 on 16/2/1.
//  Copyright © 2016年 mc110. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    @IBOutlet var blueSquare: UIView!
    @IBOutlet var greenSquare: UIView!
    @IBOutlet var redSquare: UIView!
    @IBOutlet var blackSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1) { () -> Void in
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
        }
        
        UIView.animateWithDuration(1, delay: 0, options: .CurveEaseIn, animations: { () -> Void in
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.blackSquare.center.x = self.view.bounds.width - self.blackSquare.center.x
            }, completion: nil)
    }

}
