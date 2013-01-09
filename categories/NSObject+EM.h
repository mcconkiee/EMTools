//
//  NSObject+EM.h
//  BartNotify
//
//  Created by Eric McConkie on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSObject (EM)
-(NSString*)documentsDirectory;
-(NSString*)cacheDirectory;
-(NSString*)cacheDirectoryFor:(NSString*)relativeCachePath;

/*
 // messaging     
 */
-(void)warningWithMessage:(NSString*)msg title:(NSString*)aTitle;

-(id<UIApplicationDelegate>)appDelegate;
@end
