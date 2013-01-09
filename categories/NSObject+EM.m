//
//  NSObject+EM.m
//  BartNotify
//
//  Created by Eric McConkie on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSObject+EM.h"
#import <QuartzCore/QuartzCore.h>


@implementation NSObject (EM)
-(NSString*)documentsDirectory
{
    return  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}
-(NSString*)cacheDirectory
{
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}
-(NSString*)cacheDirectoryFor:(NSString*)relativeCachePath
{
    NSString *cache  = [self cacheDirectory];
    return [cache stringByAppendingString:relativeCachePath];
}



-(void)warningWithMessage:(NSString*)msg title:(NSString*)aTitle
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:aTitle 
                                                    message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    [alert release];
}


-(id<UIApplicationDelegate>)appDelegate
{
  return [[UIApplication sharedApplication] delegate];
}


@end
