//
//  ScaleViewController.swift
//  AnimationSample
//
//  Created by mc110 on 15/12/26.
//  Copyright © 2015年 mc110. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

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
        
        UIView.animateWithDuration(1) { () -> Void in
            self.redSquare.transform = CGAffineTransformMakeScale(2.0, 2.0)
        }
    }
    

}
