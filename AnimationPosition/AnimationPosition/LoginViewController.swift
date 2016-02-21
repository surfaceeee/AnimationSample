//
//  LoginViewController.swift
//  AnimationSample
//
//  Created by mc110 on 16/2/16.
//  Copyright © 2016年 mc110. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var bubble1: UIImageView!
    @IBOutlet var bubble2: UIImageView!
    @IBOutlet var bubble3: UIImageView!
    @IBOutlet var bubble4: UIImageView!
    @IBOutlet var bubble5: UIImageView!
    @IBOutlet var logo: UIImageView!
    @IBOutlet var dot: UIImageView!
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var login: UIButton!
    
    
    //Custome
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
    var loginPostion = CGPoint.zero
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bubble1.transform = CGAffineTransformMakeScale(0, 0);
        self.bubble2.transform = CGAffineTransformMakeScale(0, 0);
        self.bubble3.transform = CGAffineTransformMakeScale(0, 0);
        self.bubble4.transform = CGAffineTransformMakeScale(0, 0);
        self.bubble5.transform = CGAffineTransformMakeScale(0, 0);
        
        self.logo.center.x -= self.view.bounds.width;
        self.dot.center.x -= self.view.bounds.width/3.0;
        
        let userPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.username.frame.height))
        self.username.leftView = userPaddingView;
        self.username.leftViewMode = .Always
        
        let passwordPaddingView = UIView(frame: CGRectMake(0, 0, 44, self.password.frame.height))
        self.password.leftView = passwordPaddingView;
        self.password.leftViewMode = .Always
        
        let userImageView = UIImageView(image: UIImage(named: "User"))
        userImageView.frame = CGRectMake(13, 10, 19, 21)
        self.username.addSubview(userImageView)
        
        let passwordImageView = UIImageView(image: UIImage(named: "Key"))
        passwordImageView.frame = CGRectMake(13, 10, 22, 21)
        self.password.addSubview(passwordImageView)
        
        self.username.center.x -= self.view.bounds.width
        self.password.center.x -= self.view.bounds.width
        
        self.loginPostion = self.login.center;
        self.login.center.x -= self.view.bounds.width
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
//        UIView.animateWithDuration(0.3, animations: { () -> Void in
//            self.bubble1.transform = CGAffineTransformMakeScale(1, 1);
//            self.bubble2.transform = CGAffineTransformMakeScale(1, 1);
//            self.bubble3.transform = CGAffineTransformMakeScale(1, 1);
//            self.bubble4.transform = CGAffineTransformMakeScale(1, 1);
//            self.bubble5.transform = CGAffineTransformMakeScale(1, 1);
//            }, completion: nil)
        
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.bubble1.transform = CGAffineTransformMakeScale(1, 1);
            self.bubble4.transform = CGAffineTransformMakeScale(1, 1);
            self.bubble5.transform = CGAffineTransformMakeScale(1, 1);
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.bubble2.transform = CGAffineTransformMakeScale(1, 1);
            self.bubble3.transform = CGAffineTransformMakeScale(1, 1);
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: [], animations: { () -> Void in
            self.logo.center.x = self.view.bounds.width/2.0;
            }, completion: nil)
        
        UIView.animateWithDuration(5, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.dot.center.x += self.view.bounds.width/3.0;
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.5, options: .CurveEaseInOut, animations: { () -> Void in
            self.username.center.x += self.view.bounds.width;
            }) { (finish:Bool) -> Void in
                if (finish) {
                    print("aa")
                }
        }
        
        UIView.animateWithDuration(0.4, delay: 0.6, options: .CurveEaseInOut, animations: { () -> Void in
            self.password.center.x += self.view.bounds.width;
            }) { (finish:Bool) -> Void in
                if (finish) {
                    print("aa")
                }
        }
        
        UIView.animateWithDuration(0.4, delay: 0.7, options: .CurveEaseInOut, animations: { () -> Void in
            self.login.center.x += self.view.bounds.width;
            }) { (finish:Bool) -> Void in
                if (finish) {
                    print("aa")
                }
        }
    }

    @IBAction func loginTapped(sender: AnyObject) {
        self.login.addSubview(self.spinner)
        self.spinner.frame.origin = CGPointMake(12, 12)
        self.spinner.startAnimating()
        
        self.login.center = self.loginPostion
        self.login.center.x -= 20
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: [], animations: { () -> Void in
                self.login.center.x += 20
            }) { (finish:Bool) -> Void in
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.login.center.y += 80
                    self.spinner.removeFromSuperview()
                })
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
