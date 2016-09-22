//
//  AppDelegate.m
//  vibike
//
//  Created by Pablo García-Nieto Rodríguez  on 22/9/16.
//  Copyright © 2016 pablo. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [LoginViewController new];
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
