//
//  Truck.h
//  Vehicles
//
//  Created by Admin on 1/24/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "Vehicle.h"

@interface Truck : Vehicle

@property (nonatomic, assign) NSInteger cargoCapacityCubicFeet;

//Factory Method
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubicFeet;

@end
