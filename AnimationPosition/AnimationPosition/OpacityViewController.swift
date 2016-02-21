//
//  OpacityViewController.swift
//  AnimationSample
//
//  Created by mc110 on 15/12/26.
//  Copyright © 2015年 mc110. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet var blueSquare: UIView!
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
            self.blueSquare.alpha = 0.1
        }
    }

}
