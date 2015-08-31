//
//  SimController.m
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimController.h"

@implementation SimController

- (id)init
{
	simPolygon = [[SimPolygon alloc] init];
	[simPolygon retain];
	return self;
}

- (void)updateData
{
	[view setColor:[simPolygon getColor]];
	label.text = [NSString stringWithFormat:@"%d", [simPolygon sidenum]];
	[view setSide:[simPolygon sidenum]];
}

- (IBAction)onClickIncButton
{
	label.text = [NSString stringWithFormat:@"%d", [simPolygon incSide]];
	[view setSide:[simPolygon sidenum]];
}
- (IBAction)onClickDecButton
{
	label.text = [NSString stringWithFormat:@"%d", [simPolygon decSide]];
	[view setSide:[simPolygon sidenum]];
}

- (IBAction)onTouchPolygon:(CGPoint)pos
{
	double r = pos.x + 0.5;
	if(r < 0)
	{
		r = 0;
	}
	else if(r > 1)
	{
		r = 1;
	}
	double g = 0.5 - pos.x;
	if(g < 0)
	{
		g = 0;
	}
	else if(g > 1)
	{
		g = 1;
	}
	double b = 1 - pos.y;
	if(b < 0)
	{
		b = 0;
	}
	else if(b > 1)
	{
		b = 1;
	}
	[simPolygon setColor:r :g :b :1];
	[view setColor:[simPolygon getColor]];
	NSLog(@"%f,%f", pos.x, pos.y);
}

- (void)dealloc {
    [simPolygon release];
	[view setResponder:nil];
    [super dealloc];
}

@end
