//
//  NSObject+BFsObject.m
//  BFsAppCategary
//
//  Created by BFsAlex on 2019/7/30.
//  Copyright © 2019 BFsAlex. All rights reserved.
//

#import "NSObject+BFsObject.h"

@implementation NSObject (BFsObject)

- (void)workTaskInMainThread:(void (^)(void))taskBlock {
    
    if (taskBlock) {
        dispatch_async(dispatch_get_main_queue(), taskBlock);
    }
}

@end
