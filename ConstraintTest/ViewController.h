//
//  ViewController.h
//  ConstraintTest
//
//  Created by Ramaraj Thanga Pandi on 04/09/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    IBOutletCollection(NSLayoutConstraint) NSArray *iPadLandscapeConstraints;
    IBOutletCollection(NSLayoutConstraint) NSArray *otherScreenConstraints;

}

@end

