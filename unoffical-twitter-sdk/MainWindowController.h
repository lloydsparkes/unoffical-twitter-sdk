//
//  MainWindowController.h
//  unoffical-twitter-sdk
//
//  Created by Lloyd Sparkes on 14/06/2011.
//  Copyright 2011 Lloyd Sparkes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwitterLoginPopupDelegate.h"
#import "TwitterLoginUiFeedback.h"
#import "OAuth.h"
#import "OAuth+UserDefaults.h"
#import "OAuthConsumerCredentials.h"
#import "TwitterDialog.h"


@interface MainWindowController : UIViewController<TwitterDialogDelegate, TwitterLoginDialogDelegate> {
        OAuth *oAuth;
    
}

@end
