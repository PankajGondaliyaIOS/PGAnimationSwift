//
//  PGAnimation.swift
//  PGAnimationSwift
//
//  Created by Pankaj on 28/04/16.
//  Copyright © 2016 Pankaj. All rights reserved.
//
import UIKit

let APP_DELEGATE = UIApplication.sharedApplication().delegate as! AppDelegate

class PGAnimation: NSObject {
    
    //MARK: Animate constraints.
    
    /** Animating a view's constraint */
    class func animateConstraint (superView: UIView , duration: NSTimeInterval, newValue:CGFloat,constraint:NSLayoutConstraint ) {
        UIView.animateWithDuration(duration, animations: {
            constraint.constant += newValue
            superView.layoutIfNeeded()
            }, completion: { (value:Bool) in
        })
    }
    
    //MARK: End Animate constraints.
    //MARK:
    
    //MARK: Animate frame by only CGRect.
    //MARK:
    
    //No constraint will be modified
    
    /** Animating a view x position using CGrect */
    class func animateXWithRect (view: UIView , duration: NSTimeInterval, newX:CGFloat) {
        UIView.animateWithDuration(duration, animations: {
            var frame = view.frame
            frame.origin.x = newX
            view.frame = frame
            }, completion: { (value:Bool) in
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view x position using CGrect */
    class func animateYWithRect (view: UIView , duration: NSTimeInterval, newY:CGFloat) {
        UIView.animateWithDuration(duration, animations: {
            var frame = view.frame
            frame.origin.y = newY
            view.frame = frame
            }, completion: { (value:Bool) in
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view Width position using CGrect */
    class func animateWidthWithRect (view: UIView , duration: NSTimeInterval, newWidth:CGFloat) {
        UIView.animateWithDuration(duration, animations: {
            var frame = view.frame
            frame.size.width = newWidth
            view.frame = frame
            }, completion: { (value:Bool) in
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view Height position using CGrect */
    class func animateHeightWithRect (view: UIView , duration: NSTimeInterval, newHeight:CGFloat) {
        UIView.animateWithDuration(duration, animations: {
            var frame = view.frame
            frame.size.height = newHeight
            view.frame = frame
            }, completion: { (value:Bool) in
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from top left corner to centre CGrect */
    class func animateTopLeftCornerToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = true;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(0,
                0,
                0,
                0);
            //view.layoutIfNeeded()
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(duration, animations: {
                    view.hidden = false
                    view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width/2-oldFrame.size.width/2,
                        APP_DELEGATE.window!.frame.size.height/2-oldFrame.size.height/2,
                        oldFrame.size.width,
                        oldFrame.size.height)
                    }, completion: { (value:Bool) in
                        UIApplication.sharedApplication().endIgnoringInteractionEvents()
                        view.layoutIfNeeded()
                })
        })
    }
    
    /** Animating a view from top right corner to centre CGrect */
    class func animateTopRightCornerToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = true;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width,
                0,
                0,
                0);
            //view.layoutIfNeeded()
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(duration, animations: {
                    view.hidden = false
                    view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width/2-oldFrame.size.width/2,
                        APP_DELEGATE.window!.frame.size.height/2-oldFrame.size.height/2,
                        oldFrame.size.width,
                        oldFrame.size.height)
                    }, completion: { (value:Bool) in
                        UIApplication.sharedApplication().endIgnoringInteractionEvents()
                        view.layoutIfNeeded()
                })
        })
    }
    
    /** Animating a view from bottom left corner to centre CGrect */
    class func animateBottomLeftCornerToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = true;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(0,
                APP_DELEGATE.window!.frame.size.height,
                0,
                0);
            //view.layoutIfNeeded()
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(duration, animations: {
                    view.hidden = false
                    view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width/2-oldFrame.size.width/2,
                        APP_DELEGATE.window!.frame.size.height/2-oldFrame.size.height/2,
                        oldFrame.size.width,
                        oldFrame.size.height)
                    }, completion: { (value:Bool) in
                        UIApplication.sharedApplication().endIgnoringInteractionEvents()
                        view.layoutIfNeeded()
                })
        })
    }
    
    /** Animating a view from bottom right corner to centre CGrect */
    class func animateBottomRightCornerToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = true;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width,
                APP_DELEGATE.window!.frame.size.height,
                0,
                0)
            //view.layoutIfNeeded()
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(duration, animations: {
                    view.hidden = false
                    view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width/2-oldFrame.size.width/2,
                        APP_DELEGATE.window!.frame.size.height/2-oldFrame.size.height/2,
                        oldFrame.size.width,
                        oldFrame.size.height)
                    }, completion: { (value:Bool) in
                        UIApplication.sharedApplication().endIgnoringInteractionEvents()
                        view.layoutIfNeeded()
                })
        })
    }
    
    /** Animating a view from centre to right bottom corner to centre CGrect */
    class func animateFromCentreToRightBottomCornerWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = false;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width, APP_DELEGATE.window!.frame.size.height,oldFrame.size.width,
                oldFrame.size.height)
            }, completion: { (value:Bool) in
                view.hidden = true;
                view.frame = oldFrame; // Setting it to its old frame
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to left bottom corner to centre CGrect */
    class func animateFromCentreToLeftBottomCornerWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = false;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(0-oldFrame.size.width, APP_DELEGATE.window!.frame.size.height,                                    oldFrame.size.width,
                oldFrame.size.height)
            }, completion: { (value:Bool) in
                view.hidden = true;
                view.frame = oldFrame; // Setting it to its old frame
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to left top corner to centre CGrect */
    class func animateFromCentreToRightTopCornerWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = false;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(APP_DELEGATE.window!.frame.size.width, 0-oldFrame.size.height,                                    oldFrame.size.width,
                oldFrame.size.height);
            }, completion: { (value:Bool) in
                view.hidden = true;
                view.frame = oldFrame; // Setting it to its old frame
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to left top corner to centre CGrect */
    class func animateFromCentreToLeftTopCornerWithRect (view: UIView , duration: NSTimeInterval) {
        let oldFrame = view.frame
        view.hidden = false;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(0-oldFrame.size.width, 0-oldFrame.size.height,                                    oldFrame.size.width,
                oldFrame.size.height)
            }, completion: { (value:Bool) in
                view.hidden = true;
                view.frame = oldFrame; // Setting it to its old frame
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view's whole CGrect */
    class func animateWholeRect (view: UIView , duration: NSTimeInterval, newFrame:CGRect) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = newFrame
            }, completion: { (value:Bool) in
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view's whole CGrect */
    class func animateFromCentreWithZeroRect (view: UIView , duration: NSTimeInterval) {
        var frameCentre = view.frame;
        frameCentre.origin.x = (APP_DELEGATE.window!.frame.size.width/2) - (frameCentre.size.width/2);
        frameCentre.origin.y = (APP_DELEGATE.window!.frame.size.height/2) - (frameCentre.size.height/2)
        view.frame = frameCentre
        self.animateFromZeroRect(view, duration: duration)
    }
    
    /** Animating a view to Zero CGrect */
    class func animateToZeroRect (view: UIView , duration: NSTimeInterval) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        let oldFrame = view.frame;
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake((APP_DELEGATE.window!.frame.size.width/2),
                (APP_DELEGATE.window!.frame.size.height/2),
                0,
                0)
            }, completion: { (value:Bool) in
                view.frame = oldFrame;
                view.hidden = true;
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to bottom with CGrect */
    class func animateCentreToBottomWithRect (view: UIView , duration: NSTimeInterval) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(view.frame.origin.x,
                APP_DELEGATE.window!.frame.size.height + view.frame.size.height,
                view.frame.size.width,
                view.frame.size.height);
            }, completion: { (value:Bool) in
                view.hidden = true;
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from bottom to centre with CGrect */
    class func animateBottomToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        view.frame = CGRectMake(view.frame.origin.x,
                                APP_DELEGATE.window!.frame.size.height + view.frame.size.height,
                                view.frame.size.width,
                                view.frame.size.height);
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.center = view.superview!.center;
            }, completion: { (value:Bool) in
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to top with CGrect */
    class func animateCentreToTopWithRect (view: UIView , duration: NSTimeInterval) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(view.frame.origin.x,
                -view.frame.origin.y - view.frame.size.height,
                view.frame.size.width,
                view.frame.size.height)
            }, completion: { (value:Bool) in
                view.hidden = true;
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from left to centre with CGrect */
    class func animateLeftToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        view.frame = CGRectMake(-APP_DELEGATE.window!.frame.size.width - view.frame.size.width,
                                view.frame.origin.y,
                                view.frame.size.width,
                                view.frame.size.height);
        
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.center = view.superview!.center;
            }, completion: { (value:Bool) in
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to right with CGrect */
    class func animateCentreToRightWithRect (view: UIView , duration: NSTimeInterval) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(+APP_DELEGATE.window!.frame.size.width + view.frame.size.width,
                view.frame.origin.y,
                view.frame.size.width,
                view.frame.size.height);
            }, completion: { (value:Bool) in
                view.hidden = true;
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from right to centre with CGrect */
    class func animateRightToCentreWithRect (view: UIView , duration: NSTimeInterval) {
        view.frame = CGRectMake(+APP_DELEGATE.window!.frame.size.width + view.frame.size.width,
                                view.frame.origin.y,
                                view.frame.size.width,
                                view.frame.size.height);
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.center = view.superview!.center;
            }, completion: { (value:Bool) in
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    /** Animating a view from centre to left with CGrect */
    class func animateCentreToLeftWithRect (view: UIView , duration: NSTimeInterval) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        UIView.animateWithDuration(duration, animations: {
            view.frame = CGRectMake(-APP_DELEGATE.window!.frame.size.width - view.frame.size.width,
                view.frame.origin.y,
                view.frame.size.width,
                view.frame.size.height);
            }, completion: { (value:Bool) in
                view.hidden = true;
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    class func animateTopToCentreWithRect(view: UIView, nDuration: Double) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        view.frame = CGRectMake(view.frame.origin.x,
                                -view.superview!.frame.size.height,
                                view.frame.size.width,
                                view.frame.size.height);
        
        UIView.animateWithDuration(nDuration, animations: {
            view.center = view.superview!.center;
            }, completion: { (value:Bool) in
                //                view.hidden = true;
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                view.layoutIfNeeded()
        })
    }
    
    //MARK: END Animate frame by only CGRect.
    //MARK:
    
    // --------------------------------------
    
    //MARK: View Color spread animation
    
    class func animateViewFillWithColor (view: UIView , duration: NSTimeInterval) {
        view.hidden = false;
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        let Oldtransform = view.transform;
        UIView.animateWithDuration(duration, animations: {
            view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 10, 10);
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(duration, animations: {
                    view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 1);
                    }, completion: { (value:Bool) in
                        view.transform = Oldtransform;
                        UIApplication.sharedApplication().endIgnoringInteractionEvents()
                        view.layoutIfNeeded()
                })
        })
    }
    
    //MARK: END Color spread animation.
    //MARK:
    
    
    //MARK: Animate Blink
    
   /* /** Animating a view with blink */
    class func animateBlink (let nMustBeOne:Int, nMaxBlink:Int, view: UIView , duration: NSTimeInterval) {
        UIView.animateWithDuration(duration, animations: {
            view.alpha = 0.0
            }, completion: { (value:Bool) in
                self.BlinkHelper(nMustBeOne, nMaxBlinkCount: nMaxBlink, view: view, duration: duration)
        })
    }
    
    class func BlinkHelper (var nMustBeOne:Int, nMaxBlinkCount:Int, view: UIView , duration: NSTimeInterval) {
        nMustBeOne = nMustBeOne+1;
        UIView.animateWithDuration(duration, animations: {
            view.alpha = 1.0
            }, completion: { (value:Bool) in
                if  nMaxBlinkCount > nMustBeOne  {
                    self.animateBlink(nMustBeOne, nMaxBlink: nMaxBlinkCount, view: view, duration: duration)
                }
        })
    }
    //MARK: END Animate Blink.
    //MARK:*/
    
    //MARK: Native layer animations methods without effecting frame
    
    /** Bounce */
    class func animateZoomBounce (view: UIView ) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        
        view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
        UIView.animateWithDuration(0.3/1.5, animations: {
            view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(0.3/2 , animations: {
                    view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
                    }, completion: { (value:Bool) in
                        UIView.animateWithDuration(0.3/2 , animations: {
                            view.transform = CGAffineTransformIdentity;
                            UIApplication.sharedApplication().endIgnoringInteractionEvents()
                            view.layoutIfNeeded()
                            }, completion: { (value:Bool) in
                        })
                })
        })
    }
    
    /** Shake */
    class func animateShake() -> CAKeyframeAnimation {
        let animation = CAKeyframeAnimation() ;
        animation.keyPath = "position.x";
        animation.values = [ 0, 10, -10, 10, 0 ];
        animation.keyTimes = [ 0, (1 / 6.0), (3 / 6.0), (5 / 6.0), 1 ];
        animation.duration = 0.4;
        animation.additive = true;
        return animation;
    }
    
    /** Spin */
    class func animateSpin(spinCount:Float, duration: CFTimeInterval) -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.fromValue = 0;
        animation.toValue = ((360*M_PI)/180)
        animation.duration = duration
        animation.repeatCount = spinCount
        return animation;
    }
    
    /** Flip */
    class func animateFlip(flipCount:Float, duration: CFTimeInterval) -> CATransition {
        let transition = CATransition()
        transition.startProgress = 0;
        transition.endProgress = 1.0;
        transition.type = "flip";
        transition.subtype = "fromRight";
        transition.duration = duration;
        transition.repeatCount = flipCount;//BIG to countinous flip
        transition.delegate = self;
        return transition;
    }
    
    /** SpringRotation */
    class func animateSpringRotation(flipCount:Float, duration: CFTimeInterval) -> CASpringAnimation {
        let springRotation = CASpringAnimation(keyPath: "transform.rotation.z");
        springRotation.toValue = M_PI * 2.0 /* full rotation*/
        springRotation.duration = duration;
        springRotation.cumulative = true;
        springRotation.repeatCount = flipCount;
        springRotation.damping = 8;
        return springRotation;
    }
    
    /** Fade */
    class func animateFade(duration: CFTimeInterval) -> CATransition {
        let animation = CATransition ();
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        animation.type = kCATransitionFade;
        animation.duration = duration;
        return animation;
    }
    
    /** Animate from right with CATransition*/
    class func animateFromRightWithCATransition(duration: CFTimeInterval) -> CATransition {
        let animation = CATransition ();
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        animation.type = kCATransitionFade;
        animation.duration = duration;
        animation.type = kCATransitionMoveIn;
        animation.subtype = kCATransitionFromRight;
        animation.delegate = self;
        return animation;
    }
    
    /** Animate from left with CATransition*/
    class func animateFromLeftWithCATransition(duration: CFTimeInterval) -> CATransition {
        let animation = CATransition ();
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        animation.type = kCATransitionFade;
        animation.duration = duration;
        animation.type = kCATransitionMoveIn;
        animation.subtype = kCATransitionFromLeft;
        animation.delegate = self;
        return animation;
    }
    
    /** Animate from top with CATransition*/
    class func animateFromTopWithCATransition(duration: CFTimeInterval) -> CATransition {
        let animation = CATransition ();
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        animation.type = kCATransitionFade;
        animation.duration = duration;
        animation.type = kCATransitionMoveIn;
        animation.subtype = kCATransitionFromBottom;
        animation.delegate = self;
        return animation;
    }
    
    /** Animate from bottom with CATransition*/
    class func animateFromBottomWithCATransition(duration: CFTimeInterval) -> CATransition {
        let animation = CATransition ();
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        animation.type = kCATransitionFade;
        animation.duration = duration;
        animation.type = kCATransitionMoveIn;
        animation.subtype = kCATransitionFromTop;
        animation.delegate = self;
        return animation;
    }
    
    /** Animate Zoom with CATransition*/
    class func animateBounce(zoomCount:Float , duration: CFTimeInterval) -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath:"transform")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        animation.duration = duration
        animation.repeatCount = zoomCount
        animation.autoreverses = true
        animation.removedOnCompletion = true
        animation.toValue = NSValue(CATransform3D: CATransform3DMakeScale(1.2, 1.2, 1.0))
        return animation;
    }
    
    /** Animating a view with zooming/expanding effect from centre */
    class func animateFromZeroRect (view: UIView , duration: NSTimeInterval) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        
        view.transform = CGAffineTransformMakeScale(0, 0);
        UIView.animateWithDuration(duration, animations: {
            view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
            }, completion: { (value:Bool) in
                UIView.animateWithDuration(0.3/2, animations: {
                    view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 1);
                    }, completion: { (value:Bool) in
                        UIApplication.sharedApplication().endIgnoringInteractionEvents()
                        view.layoutIfNeeded()
                })
        })
    }
    //MARK: END Native layer animations methods without effecting frame.
    
    //MARK:
    //MARK: Navigation With Animation Methods
    
    /** Animate PushViewController with Present Effect */
    class func animatePushViewControllerWithPresentEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        fromViewController.navigationController?.view.layer .addAnimation(self.animateFromBottomWithCATransition(0.4), forKey: nil)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with Zoom Effect */
    class func animatePushViewControllerWithZoomEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        fromViewController.navigationController?.view.layer .addAnimation(self.animateBounce(1, duration: 0), forKey: nil)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with Spin Effect */
    class func animatePushViewControllerWithSpinEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        fromViewController.navigationController?.view.layer .addAnimation(self.animateSpin(1.0, duration: 0.4), forKey: nil)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with PresentDown Effect */
    class func animatePushViewControllerWithPresentDownEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        fromViewController.navigationController?.view.layer .addAnimation(self.animateFromTopWithCATransition(0.4), forKey: nil)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with Pop Effect */
    class func animatePushViewControllerWithPopEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        fromViewController.navigationController?.view.layer .addAnimation(self.animateFromLeftWithCATransition(0.4), forKey: nil)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with Fade Effect */
    class func animatePushViewControllerWithFadeEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        let transition = CATransition()
        transition.duration = 2.0;
        transition.type = kCATransitionMoveIn;
        transition.subtype = kCATransitionFade;
        fromViewController.navigationController?.view.layer .addAnimation(transition, forKey: kCATransition)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with Spring Effect */
    class func animatePushViewControllerWithSpringEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        fromViewController.navigationController?.view.layer .addAnimation(self.animateSpringRotation(1, duration: 0.5), forKey: nil)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
    }
    
    /** Animate PushViewController with FlipFromRight Effect */
    class func animatePushViewControllerWithFlipFromRightEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        let transition = CATransition()
        transition.type = kCATransitionMoveIn;
        UIView.beginAnimations("Pankaj", context: nil)
        UIView.setAnimationDuration(0.75)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
        
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fromViewController.navigationController!.view, cache: true)
        UIView.commitAnimations()
    }
    
    /** Animate PushViewController with FlipFromLeftEffect Effect */
    class func animatePushViewControllerWithFlipFromLeftEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        let transition = CATransition()
        transition.type = kCATransitionMoveIn;
        UIView.beginAnimations("Pankaj", context: nil)
        UIView.setAnimationDuration(0.75)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
        
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromLeft, forView: fromViewController.navigationController!.view, cache: true)
        UIView.commitAnimations()
    }
    
    /** Animate PushViewController with CurlUpLeft Effect */
    class func animatePushViewControllerWithCurlUpLeftEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        let transition = CATransition()
        transition.type = kCATransitionMoveIn;
        UIView.beginAnimations("Pankaj", context: nil)
        UIView.setAnimationDuration(0.75)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
        
        UIView.setAnimationTransition(UIViewAnimationTransition.CurlUp, forView: fromViewController.navigationController!.view, cache: true)
        UIView.commitAnimations()
    }
    
    /** Animate PushViewController with CurlDown Effect  */
    class func animatePushViewControllerWithTransitionCurlDownEffect(fromViewController:UIViewController,toViewController:UIViewController ) {
        let transition = CATransition()
        transition.type = kCATransitionMoveIn;
        UIView.beginAnimations("Pankaj", context: nil)
        UIView.setAnimationDuration(0.75)
        fromViewController.navigationController?.pushViewController (toViewController, animated: true)
        
        UIView.setAnimationTransition(UIViewAnimationTransition.CurlDown, forView: fromViewController.navigationController!.view, cache: true)
        UIView.commitAnimations()
    }
    
}
