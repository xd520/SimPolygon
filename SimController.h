//
//  SimController.h
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "SimView.h"
#import "SimPolygon.h"

@interface SimController : NSObject {
    IBOutlet UIButton *decButton;
    IBOutlet UIButton *incButton;
    IBOutlet UILabel *label;
    IBOutlet SimView *view;
    SimPolygon *simPolygon;
}

- (void)updateData;
- (id)init;

- (IBAction)onClickIncButton;
- (IBAction)onClickDecButton;
- (IBAction)onTouchPolygon:(CGPoint)pos;

- (void)dealloc;

@end
