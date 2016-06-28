//
//  ViewController.swift
//  PGAnimationSwift
//
//  Created by Pankaj on 28/06/16.
//  Copyright © 2016 Pankaj. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var viewAnimate: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        viewAnimate.layer.addAnimation(PGAnimation.animateSpin(3, duration: 1), forKey: nil)
    }

}

