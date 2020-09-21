//
//  UICollectionViewLeftFlowLayout.m
//  CollectionViewScrollLeft
//
//  Created by TongLe on 2020/9/21.
//  Copyright © 2020 TongLe. All rights reserved.
//

#import "UICollectionViewLeftFlowLayout.h"

@implementation UICollectionViewLeftFlowLayout

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray *allLayoutAttributes = [super layoutAttributesForElementsInRect:rect];
    CGRect prevFrame = CGRectMake(-FLT_MAX, -FLT_MAX, 0, 0);
    for (UICollectionViewLayoutAttributes *layoutAttributes in allLayoutAttributes)
    {
        //fix blur
        CGRect theFrame = CGRectIntegral(layoutAttributes.frame);
        
        //left justify
        if(prevFrame.origin.x > -FLT_MAX && prevFrame.origin.y == theFrame.origin.y){
            theFrame.origin.x = prevFrame.origin.x +
                                prevFrame.size.width +
                                20;
        }
        NSLog(@"prevFrame-%@,theFrame=%@",NSStringFromCGRect(theFrame),NSStringFromCGRect(prevFrame));
        prevFrame = theFrame;

        layoutAttributes.frame = theFrame;
    }
    return allLayoutAttributes;
}

@end
