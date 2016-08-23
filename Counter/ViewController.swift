//
//  ViewController.swift
//  Counter
//
//  Created by Gordon Seto on 2016-08-21.
//  Copyright © 2016 Gordon Seto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var countButton: CounterButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func onCoinTapped(sender: UIButton) {
        
        count++
        numberLabel.text = "\(self.count)"
        animateText()
        
        if count == 10 {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func onResetTapped(sender: AnyObject) {
        count = 0
        numberLabel.text = "\(count)"
    }

    func animateText(){
        UIView.animateWithDuration(0.1, delay: 0.0, options: [], animations: {
            self.numberLabel.transform = CGAffineTransformMakeScale(1.1, 1.1)
            }, completion: {completed in
                UIView.animateWithDuration(0.1, delay: 0.0, options: [], animations: {
                    self.numberLabel.transform = CGAffineTransformMakeScale(1.0, 1.0)
                    }, completion: {completed in })
        })
    }
}

