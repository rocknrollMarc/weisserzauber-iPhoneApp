//
//  Navi.h
//  Weisserzauber
//
//  Created by Marc Bluemner on 06.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <AddressBook/AddressBook.h>


@interface Navi : UIViewController

@property CLLocationCoordinate2D coords;


//- (void) showMap;

- (IBAction)Navi:(UIButton *)sender;

@end
