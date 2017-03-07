//
//  Motorcycle.m
//  Vehicles
//
//  Created by Admin on 1/24/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "Motorcycle.h"

@implementation Motorcycle

#pragma mark - Factory Method
+(Motorcycle *)motorcycleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise
{
    //Create a new instance of the motorcycle with the basic properties by calling the Factory
    //method on the superclass.
    Motorcycle *newMotorcycle = [Motorcycle vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:@"gas engine" wheels:2];
    
    //Set the Motorcycle-specific properties.
    newMotorcycle.engineNoise = engineNoise;
    
    return newMotorcycle;
}

@end
