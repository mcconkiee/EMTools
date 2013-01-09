//
//  CloudBlock.h
//  CoredataTest
//
//  Created by Eric McConkie on 1/8/13.
//  Copyright (c) 2013 Grio. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    CloudBlockTypeUndeclared = -1,
    CloudBlockTypeFailed = 0,
    CloudBlockTypeSuccessful = 1,
    CloudBlockTypeUncessary = 2, //called if we are below 5.0.1 os
}CloudBlockType;

@interface CloudBlock : NSObject
+(CloudBlockType)blockFileFromiCloud:(NSURL*)pathURL;
@end
