//
//  VehicleDetatilViewController.h
//  Vehicles
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

//Forward declaration of a class to be imported in the .m file
@class Vehicle;

@interface VehicleDetatilViewController : UIViewController <UIAlertViewDelegate>

@property (strong, nonatomic) Vehicle *detailVehicle;

@end
