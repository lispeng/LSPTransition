//
//  LSPPresentationController.m
//  CustomAnimatedTransition
//
//  Created by mac on 15-12-4.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPPresentationController.h"

@implementation LSPPresentationController
/**
 *
 *presentedView视图的frame大小
 *  @return 返回的是动画产生的控制其实我frame大小
 */

//- (CGRect)frameOfPresentedViewInContainerView
//{
//    
//    return CGRectInset(self.containerView.frame, 10, 10);
//}

/**
 *  动画即将开始时调用此方法
 */
- (void)presentationTransitionWillBegin
{
    //设置转场出来的视图的frame
    self.presentedView.frame = self.containerView.bounds;
    [self.containerView addSubview:self.presentedView];
    
}
/**
 *  转场动画开始完成后调用此方法
 */
- (void)presentationTransitionDidEnd:(BOOL)completed
{
    
}
/**
 *  转场动画即将退出时调用的方法
 */
- (void)dismissalTransitionWillBegin
{
    
}
/**
 *  试图一处完毕后调用此方法
 */
- (void)dismissalTransitionDidEnd:(BOOL)completed
{
    //把当前控制器的视图移除
    [self.presentedView removeFromSuperview];
}
@end
