//
//  WXAHeaderDefaultImpl.m
//  WeexAnalyzer
//
//  Created by 对象 on 2017/10/20.
//  Copyright © 2017年 Taobao. All rights reserved.
//

#import "WXAMenuDefaultImpl.h"

@interface WXAMenuDefaultImpl ()
{
    UIView *_headerView;
}
@end

@implementation WXAMenuDefaultImpl

- (UIView *)headerView
{
    if (!_headerView) {
        UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.headerHeight)];
        header.backgroundColor = [UIColor whiteColor];
        UILabel *label = [[UILabel alloc] initWithFrame:header.bounds];
        label.text = @"Weex Analyzer";
        label.font = [UIFont boldSystemFontOfSize:16];
        label.textColor = [UIColor darkGrayColor];
        label.textAlignment = NSTextAlignmentCenter;
        [header addSubview:label];
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, 43.5, label.frame.size.width, 0.5)];
        line.backgroundColor = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1];
        [header addSubview:line];
        _headerView = header;
    }
    return _headerView;
}

- (CGFloat)headerHeight
{
    return 44;
}

- (CGRect)frame
{
    CGSize size = UIScreen.mainScreen.bounds.size;
    return CGRectMake(size.width*0.1, size.height*0.1, size.width*0.8, size.height*0.8);
}

@end

