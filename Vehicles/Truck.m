//
//  Truck.m
//  Vehicles
//
//  Created by Admin on 1/24/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "Truck.h"

@implementation Truck

#pragma mark - Factory Method
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubicFeet
{
    //Create a new instance using the superclass's factory method.
    Truck *newTruck = [Truck vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:powerSource wheels:numberOfWheels];
    
    newTruck.cargoCapacityCubicFeet = cargoCapacityCubicFeet;
    
    //Return the newly created truck instance.
    return newTruck;
}

@end
