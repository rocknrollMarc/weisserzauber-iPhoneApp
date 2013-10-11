//
//  Mampaey.h
//  Weisserzauber
//
//  Created by Marc Bluemner on 07.12.12.
//  Copyright (c) 2012 Marc Bluemner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface Mampaey : UIViewController
<MFMailComposeViewControllerDelegate>

- (IBAction)sendMail:(id)sender;

@end
