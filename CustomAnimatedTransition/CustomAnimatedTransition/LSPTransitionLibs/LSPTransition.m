//
//  LSPTransition.m
//  CustomAnimatedTransition
//
//  Created by mac on 15-12-4.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPTransition.h"
#import "Singleton.h"
#import "LSPAnimationTransitioning.h"
#import "LSPPresentationController.h"
@implementation LSPTransition
SingletonS(Transition)

#pragma mark---UIViewControllerTransitioningDelegate

/**
 *  设定当前视图来源与转场出的视图来源
 */
- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    return [[LSPPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}
/**
 *  转场动画进入时的设定
 */
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    LSPAnimationTransitioning *animation = [[LSPAnimationTransitioning alloc] init];
    animation.isPresentation = YES;
    return animation;
}
/**
 *  专场动画结束要移除时的设定
 */
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    LSPAnimationTransitioning *animation = [[LSPAnimationTransitioning alloc] init];
    animation.isPresentation = NO;
    return animation;
}

@end
