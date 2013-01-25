//
//  UIControl+Audit.m
//  Lettuce
//
//  Created by Eric McConkie on 10/30/12.
//
//

#import "UIControl+EM.h"
#import <objc/runtime.h>

static void *_refObject;

@implementation UIControl (EM)
-(id)refObject
{
    return objc_getAssociatedObject(self, &_refObject);
}
-(void)setRefObject:(id)aRefObject
{
    objc_setAssociatedObject(self, &_refObject, aRefObject, OBJC_ASSOCIATION_ASSIGN);
}
@end
