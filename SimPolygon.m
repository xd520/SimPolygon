//
//  SimPolygon.m
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimPolygon.h"

@implementation SimPolygon

- (id)init
{
	sideNum = 3;
	color[0] = 0.5;
	color[1] = 0.6;
	color[2] = 1;
	color[3] = 1;
	return self;
}

- (int)sidenum
{
	return sideNum;
}
- (int)setSideNum:(int)num
{
	sideNum = num;
	if(sideNum < 3)
	{
		sideNum = 3;
	}
	else if(sideNum > 100)
	{
		sideNum = 100;
	}
	return sideNum;
}
- (int)incSide
{
	return [self setSideNum:sideNum + 1];
}
- (int)decSide
{
	return [self setSideNum:sideNum - 1];
}

- (float *)getColor
{
	return color;
}
- (void)setColor:(float)r :(float)g :(float)b :(float)a
{
	color[0] = r;
	color[1] = g;
	color[2] = b;
	color[3] = a;
}

@end
