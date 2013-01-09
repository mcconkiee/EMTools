//
//  NSString+EM.m
//  BartNotify
//
//  Created by Eric McConkie on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSString+EM.h"

@implementation NSString (EM)

- (unsigned int)hexIntValue
{
    
    NSScanner *scanner;
    unsigned int result;
    
    scanner = [NSScanner scannerWithString: self];
    
    [scanner scanHexInt: &result];
    
    return result;
    
}

+ (NSString *)uniqueID
{
    NSString *uuidString = nil;
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    if (uuid) {
        uuidString = (NSString *)CFUUIDCreateString(NULL, uuid);
        CFRelease(uuid);
    }
    return [uuidString autorelease];
}

@end
