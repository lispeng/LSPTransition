//
//  LSPAnimationTransitioning.m
//  CustomAnimatedTransition
//
//  Created by mac on 15-12-4.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPAnimationTransitioning.h"
#import "UIView+Extension.h"

#define duration 0.3
@implementation LSPAnimationTransitioning
/**
 *  动画转场需要的时间
 */
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return duration;
}
/**
 *  动画类型
 */
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    if(self.isPresentation){
        
        UIView *comeView = [transitionContext viewForKey:UITransitionContextToViewKey];
        comeView.x = - comeView.width;
        [UIView animateWithDuration:duration animations:^{
            comeView.x = 0;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }else{
    
        [UIView animateWithDuration:duration animations:^{
            UIView *dismissView = [transitionContext viewForKey:UITransitionContextFromViewKey];
            dismissView.x = - dismissView.width;
            
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
        
}
@end
