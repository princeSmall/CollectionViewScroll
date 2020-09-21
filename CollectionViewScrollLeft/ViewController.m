//
//  ViewController.m
//  CollectionViewScrollLeft
//
//  Created by TongLe on 2020/9/21.
//  Copyright © 2020 TongLe. All rights reserved.
//

#import "ViewController.h"
#import "UICollectionViewLeftFlowLayout.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 190)];
    scroll.showsHorizontalScrollIndicator = YES;
    scroll.scrollEnabled = YES;
    scroll.contentSize = CGSizeMake(self.view.frame.size.width * 1.2, 190);
    [self.view addSubview:scroll];
    [scroll addSubview:self.collectionView];
    // Do any additional setup after loading the view.
}

- (UICollectionView *)collectionView{
    if (!_collectionView) {
        UICollectionViewLeftFlowLayout *layout = [[UICollectionViewLeftFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(100, 50);
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        layout.minimumLineSpacing = 20;
        layout.minimumInteritemSpacing = 20;
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 1.2, 190) collectionViewLayout:layout];
        _collectionView.contentSize = CGSizeMake(self.view.frame.size.width, 190);
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.bounces = YES;
        _collectionView.backgroundColor = [UIColor whiteColor];
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    }
    return _collectionView;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            return CGSizeMake(80, 50);
            break;
        case 1:
            return CGSizeMake(120, 50);
            break;
        case 2:
            return CGSizeMake(200, 50);
            break;
        case 3:
            return CGSizeMake(150, 50);
            break;
        case 4:
            return CGSizeMake(120, 50);
            break;
        case 5:
            return CGSizeMake(60, 50);
            break;
        case 6:
            return CGSizeMake(80, 50);
            break;
        case 7:
            return CGSizeMake(90, 50);
            break;
        case 8:
            return CGSizeMake(100, 50);
            break;
        case 9:
            return CGSizeMake(50, 50);
            break;
        case 10:
            return CGSizeMake(70, 50);
            break;
        case 11:
            return CGSizeMake(89, 50);
            break;
        case 12:
            return CGSizeMake(120, 50);
            break;
            
        default:
            break;
    }
    return CGSizeMake(120, 50);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 8;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


@end
