//
//  Motorcycle.h
//  Vehicles
//
//  Created by Admin on 1/24/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "Vehicle.h"

@interface Motorcycle : Vehicle

@property (nonatomic, strong) NSString *engineNoise;

//Factory Method
+(Motorcycle *)motorcycleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise;

@end
