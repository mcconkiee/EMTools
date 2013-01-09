//
//  UIColor+EM.m
//  BartNotify
//
//  Created by Eric McConkie on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIColor+EM.h"
#import "NSString+EM.h"

@implementation UIColor (EM)
+(UIColor*)colorFromHexString:(NSString*)FFFFFF
{
    NSString *hex = [FFFFFF stringByReplacingOccurrencesOfString:@"#" withString:@"0x"];
    UIColor *aColor = UIColorFromRGB([hex hexIntValue]);
    return aColor;
}

+(UIColor*)randomColor
{
    
    float red = ((float)rand() / RAND_MAX) * 255;
    float green = ((float)rand() / RAND_MAX) * 255;
    float blue = ((float)rand() / RAND_MAX) * 255;

    
    return [UIColor colorWithRed:red/255.0
                           green:green/255.0
                            blue:blue/255.0
                           alpha:1.0];
}
@end
