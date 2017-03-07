//
//  UIAlertView+Convenience.m
//  Vehicles
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIAlertView+Convenience.h"

@implementation UIAlertView (Convenience)

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (void)showSimpleAlertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle:title
                                                          message:message
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
    [simpleAlert show];

//    UIAlertController * simpleAlert=   [UIAlertController
//                                  alertControllerWithTitle:title
//                                  message:message
//                                  preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction* ok = [UIAlertAction
//                         actionWithTitle:@"OK"
//                         style:UIAlertActionStyleDefault
//                         handler:^(UIAlertAction * action)
//                         {
//                             //[alert dismissViewControllerAnimated:YES completion:nil];
////                             [self setupGame];
//                             
//                         }];
//    [simpleAlert addAction:ok];
//    
//    [UIAlertController presentViewController:simpleAlert animated:YES completion:nil];
}


@end
