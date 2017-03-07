//
//  Vehicle.h
//  Vehicles
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic, assign) NSInteger numberOfWheels;
@property (nonatomic, copy) NSString *powerSource;
@property (nonatomic, copy) NSString *brandName;
@property (nonatomic, copy) NSString *modelName;
@property (nonatomic, assign) NSInteger modelYear;

//Basic operation methods
-(NSString *)goForward;
-(NSString *)goBackward;
-(NSString *)stopMoving;
-(NSString *)changeGears:(NSString *)newGearName;
-(NSString *)turn:(NSInteger)degrees;
-(NSString *)makeNoise;

//Convenience method for UITableViewCells and UINavigationBar titles.
-(NSString *)vehicleTitleString;

//Convenience method to get the vehicle's details.
-(NSString *)vehicleDetailsString;

//Factory Method
+ (instancetype)vehicleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels;

@end
