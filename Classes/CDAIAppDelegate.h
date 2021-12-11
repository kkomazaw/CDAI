//
//  CDAIAppDelegate.h
//  CDAI
//
//  Created by Matsui Keiji on 11/05/10.
//  Copyright 2011 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CDAIViewController;

@interface CDAIAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CDAIViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CDAIViewController *viewController;

@end

