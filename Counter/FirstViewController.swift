//
//  FirstViewController.swift
//  Counter
//
//  Created by Gordon Seto on 2016-08-22.
//  Copyright © 2016 Gordon Seto. All rights reserved.
//

import UIKit
import BubbleTransition

class FirstViewController: UIViewController, UIViewControllerTransitioningDelegate {

    let transition = BubbleTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onButtonPressed(sender: AnyObject) {
        performSegueWithIdentifier("VC", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController
        controller.transitioningDelegate = self
        controller.modalPresentationStyle = .Custom
    }
    
    // MARK: UIViewControllerTransitioningDelegate
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .Present
        transition.startingPoint = self.view.center
        transition.bubbleColor = UIColor.whiteColor()
        return transition
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .Dismiss
        transition.startingPoint = self.view.center
        transition.bubbleColor = UIColor.whiteColor()
        return transition
    }
}
