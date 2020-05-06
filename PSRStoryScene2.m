//
//  PSRStoryScene2.m
//  HarryGuy
//
//  Created by Tanawat Wirattangsakul on 28/2/20.
//  Copyright © 2020 n.shubenkov. All rights reserved.
//
#import "PSRStoryScene3.h"
#import "PSRStoryScene2.h"
#import "PSRStoryScene.h"
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "CGPointExtension.h"
@implementation PSRStoryScene2
- (id)init
{
      self = [super init];
        if (!self) return(nil);
        CCNodeColor * backgroundColor = [CCNodeColor nodeWithColor:[CCColor whiteColor]];
        [self addChild:backgroundColor];
        
        CCSprite *backgroundImage = [CCSprite spriteWithImageNamed:@"background1_story.png"];
        [backgroundImage setTextureRect:CGRectMake(0, 0, 320, 580)];
        backgroundImage.anchorPoint = CGPointZero;
        backgroundImage.position    = CGPointZero;
        [self addChild:backgroundImage];
        
        // Hello world
        CCLabelTTF *label = [CCLabelTTF labelWithString:@"Garen"
                                               fontName:@"Chalkduster"
                                               fontSize:25.0f];
        label.positionType = CCPositionTypeNormalized;
        label.color = [CCColor whiteColor];
        //    ccp = CGPointMake(0.5, 0.38);
        label.position = ccp(0.5f, 0.9f); // Middle of screen
//        label.position = ccp(0.5f,0.8f);
        [self addChild:label];
    
        CCLabelTTF *textStory1 = [CCLabelTTF labelWithString:@"Garen เด็กหนุ่มผู้อ่อนแอ"
                                                       fontName:@"Chalkduster"
                                                       fontSize:18.0];
                textStory1.positionType = CCPositionTypeNormalized;
                textStory1.color = [CCColor whiteColor];
                //    ccp = CGPointMake(0.5, 0.38);
                textStory1.position = ccp(0.5f, 0.8f); // Middle of screen
        //        textStory1.position = ccp(0.5f,0.8f);
                [self addChild:textStory1];
    
    CCLabelTTF *textStory2 = [CCLabelTTF labelWithString:@"เกิดมาในชนบทที่อยู่ห่างไกลจากวังหลวง"
                                                   fontName:@"Chalkduster"
                                                   fontSize:18.0];
            textStory2.positionType = CCPositionTypeNormalized;
            textStory2.color = [CCColor whiteColor];
            //    ccp = CGPointMake(0.5, 0.38);
            textStory2.position = ccp(0.5f, 0.75f); // Middle of screen
    //        textStory2.position = ccp(0.5f,0.8f);
            [self addChild:textStory2];
    
    CCLabelTTF *textStory3 = [CCLabelTTF labelWithString:@"เขาเป็นผู้ที่จิตใจดี แต่ร่างกายอ่อนแอ"
                                                      fontName:@"Chalkduster"
                                                      fontSize:18.0];
               textStory3.positionType = CCPositionTypeNormalized;
               textStory3.color = [CCColor whiteColor];
               //    ccp = CGPointMake(0.5, 0.38);
               textStory3.position = ccp(0.5f, 0.70f); // Middle of screen
       //        textStory3.position = ccp(0.5f,0.8f);
               [self addChild:textStory3];
    
    
    CCLabelTTF *textStory4 = [CCLabelTTF labelWithString:@"เขาฝันว่าวันหนึ่งอยากจะท่องโลกกว้าง"
                                                        fontName:@"Chalkduster"
                                                        fontSize:18.0];
                 textStory4.positionType = CCPositionTypeNormalized;
                 textStory4.color = [CCColor whiteColor];
                 //    ccp = CGPointMake(0.5, 0.38);
                 textStory4.position = ccp(0.5f, 0.65f); // Middle of screen
         //        textStory4.position = ccp(0.5f,0.8f);
                 [self addChild:textStory4];
    
    CCLabelTTF *textStory5 = [CCLabelTTF labelWithString:@"จึงฝึกฝนร่างกายของตนให้แข็งแกร่ง"
                                                        fontName:@"Chalkduster"
                                                        fontSize:18.0];
                 textStory5.positionType = CCPositionTypeNormalized;
                 textStory5.color = [CCColor whiteColor];
                 //    ccp = CGPointMake(0.5, 0.38);
                 textStory5.position = ccp(0.5f, 0.60f); // Middle of screen
         //        textStory5.position = ccp(0.5f,0.8f);
                 [self addChild:textStory5];
    
    CCLabelTTF *textStory6 = [CCLabelTTF labelWithString:@"ณ หมู่บ้านแห่งนั้นมีมังกรอาศัยอยู่ในป่า"
                                                           fontName:@"Chalkduster"
                                                           fontSize:18.0];
                    textStory6.positionType = CCPositionTypeNormalized;
                    textStory6.color = [CCColor whiteColor];
                    //    ccp = CGPointMake(0.5, 0.38);
                    textStory6.position = ccp(0.5f, 0.55f); // Middle of screen
            //        textStory3.position = ccp(0.5f,0.8f);
                    [self addChild:textStory6];
    
    CCLabelTTF *textStory7 = [CCLabelTTF labelWithString:@"เขาได้จากหมู่บ้านเพื่อมุ่งหน้าเข้าป่า"
                                                           fontName:@"Chalkduster"
                                                           fontSize:18.0];
                    textStory7.positionType = CCPositionTypeNormalized;
                    textStory7.color = [CCColor whiteColor];
                    //    ccp = CGPointMake(0.5, 0.38);
                    textStory7.position = ccp(0.5f, 0.50f); // Middle of screen
            //        textStory3.position = ccp(0.5f,0.8f);
                    [self addChild:textStory7];
    
    CCLabelTTF *textStory8 = [CCLabelTTF labelWithString:@"ระหว่างที่เขาฝึกฝนอยู่นั้น..."
                                                           fontName:@"Chalkduster"
                                                           fontSize:18.0];
                    textStory8.positionType = CCPositionTypeNormalized;
                    textStory8.color = [CCColor whiteColor];
                    //    ccp = CGPointMake(0.5, 0.38);
                    textStory8.position = ccp(0.5f, 0.45f); // Middle of screen
            //        textStory3.position = ccp(0.5f,0.8f);
                    [self addChild:textStory8];
    
    CCLabelTTF *textStory9 = [CCLabelTTF labelWithString:@"เขาก็ได้ยินเสียงบางอย่างในถ้ำ"
                                                           fontName:@"Chalkduster"
                                                           fontSize:18.0];
                    textStory9.positionType = CCPositionTypeNormalized;
                    textStory9.color = [CCColor whiteColor];
                    //    ccp = CGPointMake(0.5, 0.38);
                    textStory9.position = ccp(0.5f, 0.40f); // Middle of screen
            //        textStory3.position = ccp(0.5f,0.8f);
                    [self addChild:textStory9];
    
    CCLabelTTF *textStory10 = [CCLabelTTF labelWithString:@"เขาถึงเดินเข้าไปเพื่อหาคำตอบ"
                                                           fontName:@"Chalkduster"
                                                           fontSize:18.0];
                    textStory10.positionType = CCPositionTypeNormalized;
                    textStory10.color = [CCColor whiteColor];
                    //    ccp = CGPointMake(0.5, 0.38);
                    textStory10.position = ccp(0.5f, 0.35f); // Middle of screen
            //        textStory3.position = ccp(0.5f,0.8f);
                    [self addChild:textStory10];
    
    
    // Create a Menu button
           CCButton *menuButton = [CCButton buttonWithTitle:@"[ Menu ]" fontName:@"Chalkduster" fontSize:18.0f];
           menuButton.color = [CCColor whiteColor];
           menuButton.positionType = CCPositionTypeNormalized;
           menuButton.position = ccp(0.85f, 0.95f); // Top Right of screen
    [menuButton setTarget:self selector:@selector(onMenuClicked:)];
           [self addChild:menuButton];
    
    // Create a Back button
           CCButton *backButton = [CCButton buttonWithTitle:@"[ <- Back ]" fontName:@"Chalkduster" fontSize:18.0f];
           backButton.color = [CCColor whiteColor];
           backButton.positionType = CCPositionTypeNormalized;
           backButton.position = ccp(0.19f, 0.1f); // Top Right of screen
    [backButton setTarget:self selector:@selector(onBackClicked:)];
           [self addChild:backButton];
    
    CCButton *nextButton = [CCButton buttonWithTitle:@"[ Next -> ]" fontName:@"Chalkduster" fontSize:18.0f];
          nextButton.color = [CCColor whiteColor];
          nextButton.positionType = CCPositionTypeNormalized;
          nextButton.position = ccp(0.82f, 0.1f); // Top Right of screen
          [nextButton setTarget:self selector:@selector(onNextClicked:)];
          [self addChild:nextButton];
    return self;
}
- (void)onMenuClicked:(CCButton *)menuButton
{
    [[CCDirector sharedDirector] popToRootSceneWithTransition:[CCTransition transitionCrossFadeWithDuration:1]];
}

- (void)onBackClicked:(CCButton *)backButton
{
    [[CCDirector sharedDirector]pushScene:[PSRStoryScene new]
                           withTransition:[CCTransition transitionRevealWithDirection:CCTransitionDirectionRight
                                                                             duration:0.5]];
}

- (void)onNextClicked:(CCButton *)nextButton
{
    [[CCDirector sharedDirector]pushScene:[PSRStoryScene3 new]
                           withTransition:[CCTransition transitionRevealWithDirection:CCTransitionDirectionLeft
                                                                             duration:0.5]];
}
@end
