//
//  LSPTransition.h
//  CustomAnimatedTransition
//
//  Created by mac on 15-12-4.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//Create By 李斯鹏
/*************************************************************
  转场动画的使用:
 1.包含头文件LSPTransition.h
 2.创建要转场进入的控制器(presitationController)
 3.设置控制器presitationController的modalPresentationStyle为UIModalPresentationCustom
 4.设置控制器presitationController的transitioningDelegate为LSPTransitiond对象（通过单例可以获得）
 5.调用当前控制器的presentViewController:animated:completion: 方法即可;
 **************************************************************/


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Singleton.h"
@interface LSPTransition : NSObject<UIViewControllerTransitioningDelegate>
SingletonL(Transition);
@end
