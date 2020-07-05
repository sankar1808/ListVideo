//
//  ListCell.h
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *listImageView;
@property (weak, nonatomic) IBOutlet UILabel *listDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;

@end

NS_ASSUME_NONNULL_END
