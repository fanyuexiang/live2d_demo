//
//  ViewController.m
//  MyGirl
//
//  Created by fan on 2018/11/21.
//  Copyright © 2018 fancy. All rights reserved.
//

#import "ViewController.h"
#include "LAppLive2DManager.h"

@interface ViewController ()

@end

@implementation ViewController {
    LAppLive2DManager *live2DMgr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    live2DMgr = new LAppLive2DManager();
    CGRect screen = [UIScreen mainScreen].bounds;
    LAppView *view = live2DMgr->createView(screen);
    live2DMgr->loadModel("Live2DResource/HaruFullPack/haru.model.json");
    [self.view addSubview:view];
}

- (void)dealloc {
    delete live2DMgr;
    live2DMgr = nil;
}


@end
