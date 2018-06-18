//
//  ViewController.swift
//  UIPinchGesture
//
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIGestureRecognizerDelegate
{
var pinchGesture = UIPinchGestureRecognizer()
    @IBOutlet weak var viewPinch: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchedView(sender:)))
        viewPinch.isUserInteractionEnabled = true
        viewPinch.addGestureRecognizer(pinchGesture)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func pinchedView(sender:UIPinchGestureRecognizer){
        self.view.bringSubview(toFront: viewPinch)
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
    }
   
}

