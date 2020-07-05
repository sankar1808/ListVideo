//
//  CollectionCell.m
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import "CollectionCell.h"

@implementation CollectionCell

@synthesize img;
@synthesize nameLabel;
@synthesize weekLabel;
@synthesize playLabel;
@synthesize playButton;
@synthesize timeLabel;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    timeLabel.layer.cornerRadius = 10.0f;
    timeLabel.layer.masksToBounds = YES;
    
}

@end
