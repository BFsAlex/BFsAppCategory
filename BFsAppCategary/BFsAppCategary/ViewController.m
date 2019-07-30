//
//  ViewController.m
//  BFsAppCategary
//
//  Created by BFsAlex on 2019/7/30.
//  Copyright © 2019 BFsAlex. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+BFsObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self performSelectorInBackground:@selector(taskInMainThread) withObject:nil];
}

#pragma mark - Test

- (void)taskInMainThread {
    NSLog(@"[%@ %@]\n%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), [NSThread currentThread]);
    [self workTaskInMainThread:^{
        NSLog(@"%@\nWork task in main thread.", [NSThread currentThread]);
    }];
}

@end
