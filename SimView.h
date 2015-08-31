//
//  SimView.h
//
//  Created by 苦味巧克力 on 11-9-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SimView : UIView {
	int sideNum;
	id responder;
	float color[4];
}

- (void)setResponder:(id)resp;

- (void)setSide:(int)num;

- (void)drawRect:(CGRect)rect;

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;

- (void)setColor:(float *)c;
@end
