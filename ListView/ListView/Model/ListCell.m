//
//  ListCell.m
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import "ListCell.h"

@implementation ListCell

@synthesize listImageView;
@synthesize listDescriptionLabel;
@synthesize timeLabel;
@synthesize yearLabel;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    listImageView.layer.cornerRadius = listImageView.frame.size.width/2;
    listImageView.layer.masksToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
