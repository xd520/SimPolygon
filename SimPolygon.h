//
//  SimPolygon.h
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SimPolygon : NSObject {
	int sideNum;
	float color[4];
}

- (id)init;

- (int)sidenum;
- (int)setSideNum:(int)num;
- (int)incSide;
- (int)decSide;
- (float *)getColor;
- (void)setColor:(float)r :(float)g :(float)b :(float)a;


@end
