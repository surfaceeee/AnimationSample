//
//  RotationViewController.swift
//  AnimationSample
//
//  Created by mc110 on 15/12/26.
//  Copyright © 2015年 mc110. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet var redSquare: UIView!
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
        
        self.spin()
    }
    
    func spin(){
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.redSquare.transform = CGAffineTransformRotate(self.redSquare.transform, CGFloat(M_PI))
            }) { (finished) -> Void in
                self.spin()
        }
    }
}
