//
//  UIAlertView+Convenience.h
//  Vehicles
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Convenience)

// Shows a UIAlertView with the given title and message, and an OK button to dismiss it.
+ (void)showSimpleAlertWithTitle:(NSString *)title andMessage:(NSString *)message;

@end
