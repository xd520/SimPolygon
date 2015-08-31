//
//  SimView.m
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimView.h"

@implementation SimView

- (void)setResponder:(id)resp
{
	responder = resp;
}
- (void)setSide:(int)num
{
	if(num < 3)
	{
		num = 3;
	}
	else if(num > 100)
	{
		num = 100;
	}
	if(sideNum != num)
	{
		sideNum = num;
		[self setNeedsDisplay];
	}
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	int n = sideNum;
	if(n < 3)
	{
		n = 3;
	}
	double a = 0;
	double ang = 2 * M_PI / n;
	double w = rect.size.width / 2;
	double h = rect.size.height / 2;
	double x0 = rect.origin.x + w;
	double y0 = rect.origin.y + h;
	w *= 0.9;
	h *= 0.9;
	CGRect rc;
	rc.origin.x = x0 - w;
	rc.origin.y = y0 - h;
	rc.size.width = w * 2;
	rc.size.height = h * 2;
	CGFloat c0 [4] = {1, 1, 1, 0.5};
	CGContextSetFillColor(ctx, c0);
	CGContextFillEllipseInRect(ctx, rc);
	w *= 0.9;
	h *= 0.9;
	CGContextSetFillColor(ctx, color);
	CGContextBeginPath(ctx);
	CGContextMoveToPoint(ctx, x0, y0 - h);
	for(int i = 0; i < n; i++)
	{
		a += ang;
		CGContextAddLineToPoint(ctx, x0 + w * sin(a), y0 - h * cos(a));
	}
	CGContextDrawPath(ctx, kCGPathFillStroke);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	double w = self.bounds.size.width / 2;
	double h = self.bounds.size.height / 2;
	double x0 = self.bounds.origin.x + w;
	double y0 = self.bounds.origin.y + h;
	w *= 0.9;
	h *= 0.9;
	double b = h * h;
	double r = b / (w * w);
	for(UITouch * t in touches)
	{
		CGPoint pos = [t locationInView:self];
		pos.x -= x0;
		pos.y -= y0;
		if(pos.y * pos.y <= b - r * pos.x * pos.x)
		{
			pos.x /= w;
			pos.y /= h;
			[responder onTouchPolygon:pos];
		}
		break;
	}
}

- (void)setColor:(float *)c
{
	memcpy(color, c, sizeof(color));
	[self setNeedsDisplay];
}
@end
