//
//  VehicleListTableViewController.m
//  Vehicles
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "VehicleListTableViewController.h"
#import "VehicleDetatilViewController.h"
#import "VehicleList.h"
#import "Vehicle.h"

//#import "Car.h"
//#import "Motorcycle.h"
//#import "Truck.h"


@interface VehicleListTableViewController ()

//@property (nonatomic, strong) NSMutableArray *vehicles;

@end



@implementation VehicleListTableViewController

#pragma mark - View Lifecycle
- (void)awakeFromNib
{
    [super awakeFromNib];
    
//    // Initialize the vehicle array
//    self.vehicles = [NSMutableArray array];
//    
//    // Call the setup method
//    [self setupVehicleArray];
    
    // Set the title of the View Controller, which will display in the Navigation bar.
    self.title = @"Vehicles";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data setup
//-(void)setupVehicleArray
//{
////    //Create a car.
////    Car *mustang = [[Car alloc] init];
////    mustang.brandName = @"Ford";
////    mustang.modelName = @"Mustang";
////    mustang.modelYear = 1968;
////    mustang.isConvertible = YES;
////    mustang.isHatchback = NO;
////    mustang.hasSunroof = NO;
////    mustang.numberOfDoors = 2;
////    mustang.powerSource = @"gas engine";
////    
////    //Add it to the array
////    [self.vehicles addObject:mustang];
////    
////    
////    //Create another car.
////    Car *outback = [[Car alloc] init];
////    outback.brandName = @"Subaru";
////    outback.modelName = @"Outback";
////    outback.modelYear = 1999;
////    outback.isConvertible = NO;
////    outback.isHatchback = YES;
////    outback.hasSunroof = NO;
////    outback.numberOfDoors = 5;
////    outback.powerSource = @"gas engine";
////    
////    //Add it to the array.
////    [self.vehicles addObject:outback];
////    
////    
////    //Create another car
////    Car *prius = [[Car alloc] init];
////    prius.brandName = @"Toyota";
////    prius.modelName = @"Prius";
////    prius.modelYear = 2002;
////    prius.hasSunroof = YES;
////    prius.isConvertible = NO;
////    prius.isHatchback = YES;
////    prius.numberOfDoors = 4;
////    prius.powerSource = @"hybrid engine";
////    
////    //Add it to the array.
////    [self.vehicles addObject:prius];
//
//    //Create a car.
//    Car *mustang = [Car carWithBrandName:@"Ford" modelName:@"Mustang" modelYear:1968
//                             powerSource:@"gas engine" numberOfDoors:2 convertible:YES hatchback:NO sunroof:NO];
//    
//    //Add it to the array
//    [self.vehicles addObject:mustang];
//    
//    //Create another car.
//    Car *outback = [Car carWithBrandName:@"Subaru" modelName:@"Outback" modelYear:1999
//                             powerSource:@"gas engine" numberOfDoors:5 convertible:NO hatchback:YES sunroof:NO];
//    
//    //Add it to the array.
//    [self.vehicles addObject:outback];
//    
//    //Create another car
//    Car *prius = [Car carWithBrandName:@"Toyota" modelName:@"Prius" modelYear:2007
//                           powerSource:@"hybrid engine" numberOfDoors:5 convertible:YES hatchback:YES sunroof:YES];
//    
//    //Add it to the array.
//    [self.vehicles addObject:prius];
//    
//    //Sort the array by the model year
//    NSSortDescriptor *modelYear = [NSSortDescriptor sortDescriptorWithKey:@"modelYear" ascending:YES];
//    [self.vehicles sortUsingDescriptors:@[modelYear]];
//    
//    //Add a motorcycle
//    Motorcycle *harley = [Motorcycle motorcycleWithBrandName:@"Harley-Davidson"
//                                                   modelName:@"Softail" modelYear:1979 engineNoise:@"Vrrrrrrrroooooooooom!"];
//    
//    //Add it to the array.
//    [self.vehicles addObject:harley];
//    
//    //Add another motorcycle
//    Motorcycle *kawasaki = [Motorcycle motorcycleWithBrandName:@"Kawasaki"
//                                                     modelName:@"Ninja" modelYear:2005 engineNoise:@"Neeeeeeeeeeeeeeeeow!"];
//    
//    //Add it to the array
//    [self.vehicles addObject:kawasaki];
//    
//    //Create a truck
//    Truck *silverado = [Truck truckWithBrandName:@"Chevrolet" modelName:@"Silverado"
//                                       modelYear:2011 powerSource:@"gas engine" wheels:4 cargoCapacityCubicFeet:53];
//    
//    [self.vehicles addObject:silverado];
//    
//    //Create another truck
//    Truck *eighteenWheeler = [Truck truckWithBrandName:@"Peterbilt" modelName:@"579"
//                                             modelYear:2013 powerSource:@"diesel engine" wheels:18 cargoCapacityCubicFeet:408];
//    
//    [self.vehicles addObject:eighteenWheeler];
//}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    
//    return self.vehicles.count;
    return [[VehicleList sharedInstance] vehicles].count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
//    Vehicle *rowVehicle = self.vehicles[indexPath.row];
    Vehicle *rowVehicle = [[VehicleList sharedInstance]  vehicles][indexPath.row];
    cell.textLabel.text = [rowVehicle vehicleTitleString];
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
//    NSLog(@"***************** row ******************"); // -> %ld", indexPath.row);
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        Vehicle *selectedVehicle = self.vehicles[indexPath.row];
        Vehicle *selectedVehicle = [[VehicleList sharedInstance] vehicles][indexPath.row];
        [[segue destinationViewController] setDetailVehicle:selectedVehicle];
    }
}

@end
