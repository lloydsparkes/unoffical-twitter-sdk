//
//  unoffical_twitter_sdkAppDelegate.h
//  unoffical-twitter-sdk
//
//  Created by Lloyd Sparkes on 14/06/2011.
//  Copyright 2011 Lloyd Sparkes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface unoffical_twitter_sdkAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
