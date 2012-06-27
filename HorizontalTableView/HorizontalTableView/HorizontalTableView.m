//
//  HorizontalTableView.m
//  HorizontalTableView
//
//  Created by Victor Ilyukevich on 27.06.12.
//  Copyright (c) 2012. All rights reserved.
//

#import "HorizontalTableView.h"

@implementation HorizontalTableView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.transform = CGAffineTransformMakeRotation(-M_PI/2);
        self.frame = frame;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        CGRect frame = self.frame;
        self.transform = CGAffineTransformMakeRotation(-M_PI/2);
        self.frame = frame;
    }
    return self;
}

@end
