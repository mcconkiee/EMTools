//
//  CloudBlock.m
//  CoredataTest
//
//  Created by Eric McConkie on 1/8/13.
//  Copyright (c) 2013 Grio. All rights reserved.
//

#include <sys/xattr.h>
#import "CloudBlock.h"
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@implementation CloudBlock
+(CloudBlockType)blockFileFromiCloud:(NSURL*)pathURL
{
    BOOL iOS5 = NO;
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"5.0.1")) {
        iOS5 = YES;
    }
    
    // Set do not backup attribute to whole folder
    if (iOS5) {
        BOOL success = [self addSkipBackupAttributeToItemAtURL:pathURL];
        if (success)
            return  CloudBlockTypeSuccessful;
        else
            return CloudBlockTypeFailed;
    }else
        return CloudBlockTypeUncessary;
    
    return CloudBlockTypeUndeclared;
    
}

+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
{
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    
    NSError *error = nil;
    BOOL success = [URL setResourceValue: [NSNumber numberWithBool: YES]
                                  forKey: NSURLIsExcludedFromBackupKey error: &error];
    if(!success){
        NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    return success;
    // const char* filePath = [[URL path] fileSystemRepresentation];
    // const char* attrName = "com.apple.MobileBackup";
    // u_int8_t attrValue = 1;
    // int result = setxattr(filePath, attrName, &attrValue, sizeof(attrValue), 0, 0);
    // return result == 0;
}
@end
