//
//  Wstation.m
//  Weisserzauber
//
//  Created by Marc Bluemner on 06.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import "Wstation.h"

@interface Wstation ()

@end

@implementation Wstation

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
    NSString *path = [[NSBundle mainBundle] pathForResource:@"wstation" ofType:@"html"];
    NSURL *address = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:address];
    [_webView loadRequest:request];
    

    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendMail:(id)sender {
    if (![MFMailComposeViewController canSendMail]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wstation" message:@"" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
        [alert show];
        return;
    }
     NSArray *toRecipients = [NSArray arrayWithObject:@"weisserzauber@gmx.net"];
    MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
    [controller setMailComposeDelegate:self];
    [controller setToRecipients:toRecipients];
    [self presentViewController:controller animated:YES completion:^{
        // Log the view hierarchy here to see what's going on
        //NSLog(@"View hierarchy: %@", [controller.view recursiveDescription]);
    }];
    
}

#pragma mark - MFMailComposeViewControllerDelegate
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
