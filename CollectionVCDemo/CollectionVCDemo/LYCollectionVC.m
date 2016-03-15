//
//  LYCollectionVC.m
//  CollectionVCDemo
//
//  Created by paomoliu on 16/3/15.
//  Copyright © 2016年 SunshineGirl. All rights reserved.
//

#import "LYCollectionVC.h"
#import "Masonry.h"
#import "LYCustomCollectionViewCell.h"

static NSString * const KCollectionCellID = @"CollectionCell";

@interface LYCollectionVC ()<UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) UICollectionView *collectionView;

@end

@implementation LYCollectionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake((self.view.bounds.size.width - 16) / 3, 200);
    _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    [self.view addSubview:self.collectionView];
    [self.collectionView registerNib:[UINib nibWithNibName:@"LYCustomCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:KCollectionCellID];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    int width = self.view.bounds.size.width - 8 * 2;
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(width, 400));
    }];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LYCustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:KCollectionCellID forIndexPath:indexPath];
    
    cell.productImageV.image = [UIImage imageNamed:@"1"];
    cell.descriptLabel.text = @"黑枸杞子青海野生柴达模糊啊王大国将咖喱罚款";
    cell.priceLabel.text = @"¥199.00";
    
    return cell;
}

#pragma mark - <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    int width = self.view.bounds.size.width - 8 * 2 - 12 * 2;

    return CGSizeMake(width / 3, 200);
}

//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
//{
//    return 0.0f;
//}
//
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
//{
//    return 0.0f;
//}
//
- (UIEdgeInsets) collectionView:(UICollectionView *)collectionView
                         layout:(UICollectionViewLayout *)collectionViewLayout
         insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 0.0f);
}

@end
