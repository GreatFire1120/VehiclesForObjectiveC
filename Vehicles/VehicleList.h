//
//  VehicleList.h
//  Vehicles
//
//  Created by Admin on 1/24/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleList : NSObject

//The list of vehicles.
@property (nonatomic, strong) NSArray *vehicles;

//Singleton Instance
+ (VehicleList *)sharedInstance;

@end
