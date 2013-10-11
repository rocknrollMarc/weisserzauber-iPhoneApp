//
//  Navi.m
//  Weisserzauber
//
//  Created by Marc Bluemner on 06.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import "Navi.h"
@interface Navi ()

@end

@implementation Navi

NSString *address1 = @"jungfernstieg 8";
NSString *city =@"Hamburg";




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showMap
{
    NSDictionary *address = @{
    (NSString *)kABPersonAddressStreetKey: address1,
    (NSString *)kABPersonAddressCityKey: city,
    };
    
    MKPlacemark *place = [[MKPlacemark alloc]
                          initWithCoordinate:_coords
                          addressDictionary:address];
    
    MKMapItem *mapItem = [[MKMapItem alloc]initWithPlacemark:place];
    
    NSDictionary *options = @{
MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving
    };
    
    [mapItem openInMapsWithLaunchOptions:options];

}


- (IBAction)Navi:(UIButton *)sender {
    
       
    
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    
    NSString *addressString = [NSString stringWithFormat:@"%@ %@",
                               address1,
                               city];
    
    [geocoder geocodeAddressString:addressString
                 completionHandler:^(NSArray *placemarks, NSError *error) {
                     
                     if (error) {
                         NSLog(@"Geocode failed with error: %@", error);
                         return;
                     }
                     
                     if (placemarks && placemarks.count > 0)
                     {
                         CLPlacemark *placemark = placemarks[0];
                         
                         CLLocation *location = placemark.location;
                         _coords = location.coordinate;
                         _coords = location.coordinate;
                         
                         [self showMap];
                     }
                 }];
    
}






@end
