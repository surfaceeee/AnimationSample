//
//  RepeatViewController.swift
//  AnimationSample
//
//  Created by mc110 on 16/1/31.
//  Copyright © 2016年 mc110. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet var blueSquare: UIView!
    @IBOutlet var redSquare: UIView!
    @IBOutlet var greenSquare: UIView!
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
        //从左往右的动画
        UIView.animateWithDuration(1) { () -> Void in
            self.blueSquare.center.x = self.view.bounds.width-self.blueSquare.center.x
        }
        
        //重复从左往右的动画
        UIView.animateWithDuration(1, delay: 0, options: .Repeat, animations: { () -> Void in
            self.redSquare.center.x = self.view.bounds.width-self.redSquare.center.x;
            }, completion: nil)
        
        //重复从左往右再往左的动画
        UIView.animateWithDuration(1, delay: 0, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.greenSquare.center.x = self.view.bounds.width-self.greenSquare.center.x;
            }, completion: nil)
        
    }

}
