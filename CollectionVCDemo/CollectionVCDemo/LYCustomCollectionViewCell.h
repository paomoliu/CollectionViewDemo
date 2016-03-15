//
//  LYCustomCollectionViewCell.h
//  CollectionVCDemo
//
//  Created by paomoliu on 16/3/15.
//  Copyright © 2016年 SunshineGirl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYCustomCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *productImageV;
@property (weak, nonatomic) IBOutlet UILabel *descriptLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end
