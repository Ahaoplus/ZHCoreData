//
//  UIViewController+HUD.h
//  ZHCoreData
//
//  Created by 张浩 on 2017/4/26.
//  Copyright © 2017年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HUD)
- (void)showHudInView:(UIView *)view hint:(NSString *)hint;
- (void)hideHud;

- (void)showHint:(NSString *)hint;
// 从默认(showHint:)显示的位置再往上(下)yOffset
- (void)showHint:(NSString *)hint yOffset:(float)yOffset;

- (void)showError:(NSString *)error toView:(UIView *)view;
- (void)showSuccess:(NSString *)success toView:(UIView *)view;
@end
