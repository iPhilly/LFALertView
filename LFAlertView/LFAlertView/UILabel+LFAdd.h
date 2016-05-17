//
//  UILabel+LFAdd.h
//  LFAlertView-Demo
//
//  Created by MacBook_liufei on 16/5/3.
//  Copyright © 2016年 Madiffer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LFAdd)

/**
 *  字间距
 */
@property (nonatomic,assign) CGFloat characterSpace;

/**
 *  行间距
 */
@property (nonatomic,assign) CGFloat lineSpace;

/**
 *  关键字
 */
@property (nonatomic,copy) NSString *keywords;
@property (nonatomic,strong) UIFont *keywordsFont; // 字体
@property (nonatomic,strong) UIColor *keywordsColor; // 颜色

/**
 *  下划线
 */
@property (nonatomic,copy) NSString *underlineStr;
@property (nonatomic,strong) UIColor *underlineColor;

/**
 *  计算label宽高,必须调用
 *
 * @param maxWidth 最高宽度
 *
 * return Label的rect
 */
- (CGSize)getLabelRectWithMaxWidth:(CGFloat)maxWidth;

@end
