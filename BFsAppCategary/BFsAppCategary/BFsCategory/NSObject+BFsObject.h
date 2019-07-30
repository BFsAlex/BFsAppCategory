//
//  NSObject+BFsObject.h
//  BFsAppCategary
//
//  Created by BFsAlex on 2019/7/30.
//  Copyright © 2019 BFsAlex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (BFsObject)

- (void)workTaskInMainThread:(void(^)(void))taskBlock;

@end

NS_ASSUME_NONNULL_END
