//
//  Wstation.h
//  Weisserzauber
//
//  Created by Marc Bluemner on 06.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface Wstation : UIViewController
<MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)sendMail:(id)sender;

@end
