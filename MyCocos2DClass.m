//
//  MyCocos2DClass.m
//
//  Shooting 2D
//
//  Created by Tanawat Wirattangsakul
//


#import "MyCocos2DClass.h"


@implementation MyCocos2DClass

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);
    CCNodeColor * backgroundColor = [CCNodeColor nodeWithColor:[CCColor whiteColor]];
    [self addChild:backgroundColor];

    CCSprite *backgroundImage = [CCSprite spriteWithImageNamed:@"menu@2x.jpg"];
    [backgroundImage setTextureRect:CGRectMake(0, 0, 640, 480)];
    backgroundImage.anchorPoint = CGPointZero;
    backgroundImage.position    = CGPointZero;
    [self addChild:backgroundImage];
    
    
    
    return self;
}

@end
