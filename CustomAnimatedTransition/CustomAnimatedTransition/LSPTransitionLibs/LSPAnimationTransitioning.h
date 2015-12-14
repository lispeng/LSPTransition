//
//  LSPAnimationTransitioning.h
//  CustomAnimatedTransition
//
//  Created by mac on 15-12-4.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface LSPAnimationTransitioning : NSObject<UIViewControllerAnimatedTransitioning>
/**
 *  是present设为YES,dimiss设为NO
 */
@property (assign,nonatomic) BOOL isPresentation;

@end
