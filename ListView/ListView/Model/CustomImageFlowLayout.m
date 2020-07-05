//
//  CustomImageFlowLayout.m
//  ListView
//
//  Created by Sankaranarayana Settyvari on 05/07/20.
//  Copyright © 2020 Sankaranarayana Settyvari. All rights reserved.
//

#import "CustomImageFlowLayout.h"

@implementation CustomImageFlowLayout

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.minimumLineSpacing = 10.0f;
        self.minimumInteritemSpacing = 10.0f;
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    return self;
}

- (CGSize)itemSize
{
   // NSInteger numberOfColumns = 1;
    NSLog(@"The collection view frame is - %@",NSStringFromCGRect(self.collectionView.frame));
    CGFloat itemWidth = self.collectionView.frame.size.width-75.0;//(CGRectGetWidth(self.collectionView.frame) - (numberOfColumns - 1)) / numberOfColumns;
    NSLog(@"The item width is - %f",itemWidth);
    return CGSizeMake(itemWidth, 185.0);
}

@end
