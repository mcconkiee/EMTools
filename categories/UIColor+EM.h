//
//  UIColor+EM.h
//  BartNotify
//
//  Created by Eric McConkie on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface UIColor (EM)
+(UIColor*)colorFromHexString:(NSString*)FFFFFF;
+(UIColor*)randomColor;
@end
