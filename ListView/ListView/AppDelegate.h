//
//  AppDelegate.h
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

