//
//  SimPolygonAppDelegate.h
//  SimPolygon
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimPolygonAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet id view;
	IBOutlet id ctrl;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

