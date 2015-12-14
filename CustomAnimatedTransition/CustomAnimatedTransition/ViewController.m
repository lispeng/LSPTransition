//
//  ViewController.m
//  CustomAnimatedTransition
//
//  Created by mac on 15-12-4.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "ViewController.h"
#import "LSPTransition.h"
#import "LSPTestTransitionController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    LSPTestTransitionController *test = [[LSPTestTransitionController alloc] init];
    test.modalPresentationStyle = UIModalPresentationCustom;
    test.transitioningDelegate = [LSPTransition sharedTransition];
    [self presentViewController:test animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
