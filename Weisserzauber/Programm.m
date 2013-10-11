//
//  Programm.m
//  Weisserzauber
//
//  Created by Marc Bluemner on 06.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import "Programm.h"

@interface Programm ()

@end

@implementation Programm

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
    NSString *path = [[NSBundle mainBundle] pathForResource:@"programm" ofType:@"html"];
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

@end
