//
//  VehicleDetatilViewController.m
//  Vehicles
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "VehicleDetatilViewController.h"
#import "Vehicle.h"
#import "UIAlertView+Convenience.h"


@interface VehicleDetatilViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *vehicleDetailsLabel;

- (IBAction)makeSomeNoise:(id)sender;
- (IBAction)goForward:(id)sender;
- (IBAction)stopMoving:(id)sender;
- (IBAction)goBackward:(id)sender;
- (IBAction)goTurn:(id)sender;

@end

@implementation VehicleDetatilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configureView];
}

-(void)viewDidLayoutSubviews
{
    //This method is called any time AutoLayout fires - this means it will fire when the user
    //rotates his or her device.
    [super viewDidLayoutSubviews];
    
    //Create a CGRect that contains all the subviews of the content view.
    CGRect allSubviewsFrame = CGRectZero;
    for (UIView *subview in self.contentView.subviews) {
        allSubviewsFrame = CGRectUnion(allSubviewsFrame, subview.frame);
    }
    
    //Set the scrollview content size to the width of the main view and 20 points
    //below the bottom of the CGRect that contains all the subviews so that it scrolls to the
    //appropriate point.
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, CGRectGetMaxY(allSubviewsFrame) + 20);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)configureView
{
//    // Update the user interface for the detail vehicle, if it exists.
//    if (self.detailVehicle) {
//        //Set the View Controller title, which will display in the Navigation bar.
////        self.title = [self.detailVehicle vehicleTitleString];
//        
//        //Setup the basic details string based on the properties in the base Vehicle class.
//        NSMutableString *basicDetailsString = [NSMutableString string];
//        [basicDetailsString appendString:@"Basic vehicle details:\n\n"];
//        [basicDetailsString appendFormat:@"Brand name: %@\n", self.detailVehicle.brandName];
//        [basicDetailsString appendFormat:@"Model name: %@\n", self.detailVehicle.modelName];
//        [basicDetailsString appendFormat:@"Model year: %ld\n", (long)self.detailVehicle.modelYear];
//        [basicDetailsString appendFormat:@"Power source: %@\n", self.detailVehicle.powerSource];
//        [basicDetailsString appendFormat:@"# of wheels: %ld", (long)self.detailVehicle.numberOfWheels];
//        
//        self.vehicleDetailsLabel.text = basicDetailsString;
//    }
    
    // Update the user interface for the detail vehicle, if it exists.
    if (self.detailVehicle) {
        //Set the View Controller title, which will display in the Navigation bar.
        self.title = [self.detailVehicle vehicleTitleString];
        
        self.vehicleDetailsLabel.text = [self.detailVehicle vehicleDetailsString];
    }

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)makeSomeNoise:(id)sender {
}

- (IBAction)goForward:(id)sender {
//    [UIAlertView showSimpleAlertWithTitle:@"Go Forward" andMessage:[self.detailVehicle goForward]];
    UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle: @"test"
                                                          message:@"I am testing"
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
    [simpleAlert show];
}

- (IBAction)stopMoving:(id)sender {
}

- (IBAction)goBackward:(id)sender {
}

- (IBAction)goTurn:(id)sender {
    
    //Create an alert view with a single text input to capture the number of degrees
    //to turn your vehicle. Set this class as the delegate so one of the delegate methods
    //can retrieve what the user entered.
    UIAlertView *turnEntryAlertView = [[UIAlertView alloc] initWithTitle:@"Turn" message:@"Enter number of degrees to turn:" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Go!", nil];
    turnEntryAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    [[turnEntryAlertView textFieldAtIndex:0] setKeyboardType:UIKeyboardTypeNumberPad];
    [turnEntryAlertView show];
}

#pragma mark - UIAlertViewDelegate method
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //Note: Only one alert view will actually declare this class its delegate, so we can
    //      proceed without double-checking the alert view instance. If you have more than
    //      one alert view using the same class as its delegate, make sure you check which
    //      UIAlertView object is calling this delegate method.
    if (buttonIndex != alertView.cancelButtonIndex) {
        //Get the text the user input in the text field
        NSString *degrees = [[alertView textFieldAtIndex:0] text];
        
        //Convert it from a string to an integer
        NSInteger degreesInt = [degrees integerValue];
        
        //Use the simple alert view to display the information for turning.
        [UIAlertView showSimpleAlertWithTitle:@"Turn" andMessage:[self.detailVehicle turn:degreesInt]];
    } //else the user has cancelled, and we don't need to do anything.
}
@end
