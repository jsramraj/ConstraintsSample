//
//  ViewController.m
//  ConstraintTest
//
//  Created by Ramaraj Thanga Pandi on 04/09/15.
//  Copyright (c) 2015 Ramaraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ) {
        if (size.width > size.height) {
            [iPadLandscapeConstraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop) {
                [constraint setActive:YES];
            }];
            [otherScreenConstraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop) {
                [constraint setActive:NO];
            }];
        } else {
            [iPadLandscapeConstraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop) {
                [constraint setActive:NO];
            }];
            [otherScreenConstraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *constraint, NSUInteger idx, BOOL *stop) {
                [constraint setActive:YES];
            }];
        }
    }
}

-(UITraitCollection *)overrideTraitCollectionForChildViewController:(UIViewController *)childViewController {
// Do this only for the iPad Landscape mode
    // Refer here more details http://stackoverflow.com/questions/26633172/sizing-class-for-ipad-portrait-and-landscape-modes/28268200#28268200
    UITraitCollection *traitsForiPadLandscapeHori = [UITraitCollection traitCollectionWithHorizontalSizeClass:UIUserInterfaceSizeClassRegular];
    UITraitCollection *traitsForiPadLandscapeVerti = [UITraitCollection traitCollectionWithVerticalSizeClass:UIUserInterfaceSizeClassCompact];
    UITraitCollection *traitsForiPadLandscape = [UITraitCollection traitCollectionWithTraitsFromCollections:@[traitsForiPadLandscapeHori, traitsForiPadLandscapeVerti]];
    return traitsForiPadLandscape;
}

@end
