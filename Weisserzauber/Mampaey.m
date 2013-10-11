//
//  Mampaey.m
//  Weisserzauber
//
//  Created by Marc Bluemner on 07.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import "Mampaey.h"

@interface Mampaey ()

@end

@implementation Mampaey

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

- (IBAction)sendMail:(id)sender
{
    if (![MFMailComposeViewController canSendMail]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Casting" message:@"" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    NSArray *recipients = [NSArray arrayWithObject:@"marc.bluemner@gmail.com"];
    MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
    [controller setMailComposeDelegate:self];
    [controller setToRecipients:recipients];
    [self presentViewController:controller animated:YES completion:^{
        // Log the view hierarchy here to see what's going on
        //NSLog(@"View hierarchy: %@", [controller.view recursiveDescription]);
    }];
    
}



- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
