//
//  PositionViewController.swift
//  AnimationPosition
//
//  Created by mc110 on 15/12/26.
//  Copyright © 2015年 mc110. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet var redSquare: UIView!
    @IBOutlet var greenSquare: UIView!
    @IBOutlet var greySquare: UIView!
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
            self.greenSquare.center.x = self.view.bounds.width-self.greenSquare.center.x;
            self.redSquare.center.y = self.view.bounds.height-self.redSquare.center.y;
            
            self.greySquare.center.x = self.view.bounds.width - self.greySquare.center.x
            self.greySquare.center.y = self.view.bounds.height - self.greySquare.center.y
        }
    }

}
