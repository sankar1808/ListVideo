//
//  CollectionCell.h
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *weekLabel;
@property (strong, nonatomic) IBOutlet UILabel *playLabel;
@property (weak, nonatomic) IBOutlet UIButton *playButton;

@end

NS_ASSUME_NONNULL_END
