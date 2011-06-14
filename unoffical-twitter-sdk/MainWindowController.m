//
//  MainWindowController.m
//  unoffical-twitter-sdk
//
//  Created by Lloyd Sparkes on 14/06/2011.
//  Copyright 2011 Lloyd Sparkes. All rights reserved.
//

#import "MainWindowController.h"


@implementation MainWindowController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (IBAction) twitterLogin: (id)sender{
    
    NSLog(@"Twitter Login Button Pushed");
    
    oAuth = [[OAuth alloc] initWithConsumerKey:OAUTH_CONSUMER_KEY andConsumerSecret:OAUTH_CONSUMER_SECRET];
    
    TwitterDialog *td = [[TwitterDialog alloc] init];
    td.twitterOAuth = oAuth;
    td.delegate = self;
    td.logindelegate = self;
    
    [td show];
    [td release];
    
}
#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//Twitter Delegates
- (void)twitterDidLogin {
    //Save Details
    //[SettingsClass setTwitterAccessToken:oAuth.oauth_token];
    //[SettingsClass setTwitterAccessSecret:oAuth.oauth_token_secret];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter" message:@"Sucessfully Authenticated to Twitter." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

-(void)twitterDidNotLogin:(BOOL)cancelled {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter" message:@"There was a unknown error authenticating with Twitter." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

@end
