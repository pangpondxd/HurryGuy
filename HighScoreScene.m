//
//  CCHightScore.m
//  Shooting 2D
//
//  Created by Tanawat Wirattangsakul
//

#import "HighScoreScene.h"
#import "cocos2d-ui.h"
#import "OpenALManager.h"


#define PSRScoresKey @"PSRScores"

@interface HighScoreScene ()

@property (nonatomic, strong) CCLabelTTF *label;
@property (nonatomic,strong) NSArray *scores;

@end

@implementation HighScoreScene

@synthesize scores = _scores;

- (NSArray *)scores
{
    if (!_scores){
        _scores = [[NSUserDefaults standardUserDefaults] valueForKey:PSRScoresKey] ? : @[];
    }
    return _scores;
}

- (void)setScores:(NSArray *)scores
{
    _scores = [scores sortedArrayUsingSelector:@selector(intValue)];
    [[NSUserDefaults standardUserDefaults]setValue:_scores
                                            forKey:PSRScoresKey];
}

+ (HighScoreScene *)hightScoreWithNewScore:(int)score
{
    return [[self alloc]initWithScore: score];
}

- (HighScoreScene *)initWithScore:(float)score
{
    self = [super init];
    if (self){
        if (score != 0){
            self.scores = [self.scores arrayByAddingObject:[NSString stringWithFormat:@"%f %@",score,[NSDateFormatter localizedStringFromDate:[NSDate date]
                                                                                                                                    dateStyle:NSDateFormatterShortStyle
                                                                                                                                    timeStyle:NSDateFormatterShortStyle]]];
        }
        CCNodeColor *backColor = [CCNodeColor nodeWithColor:[CCColor colorWithRed:80 / 255.0f
                                                                            green:160 / 255.0f
                                                                             blue:190 / 255.0f]];
        [self addChild:backColor];
        CCSprite *background = [CCSprite spriteWithImageNamed:@"Game_over.jpg"];
        background.positionType = CCPositionTypeNormalized;
        background.position = ccp(0.5,0.5);
        background.scale = 0.6;
        [self addChild:background];
        
        // Create a back button
        CCButton *backButton = [CCButton buttonWithTitle:@"[ Menu ]" fontName:@"Chalkduster" fontSize:18.0f];
        backButton.color = [CCColor whiteColor];
        backButton.positionType = CCPositionTypeNormalized;
        backButton.position = ccp(0.85f, 0.95f); // Top Right of screen
        [backButton setTarget:self selector:@selector(onBackClicked:)];
        [self addChild:backButton];
        
        [self presentScores];
    }
    return self;
}

- (void)presentScores
{
    CGPoint startPosition = ccp(0.05, 0.95);
    for (int i = 0; i < self.scores.count; i++){
        
        [self labelWithTitle:self.scores[i]
                    position:startPosition];
        startPosition = ccpAdd(startPosition, ccp(0, -0.05));
    }
}

- (CCLabelTTF *)labelWithTitle:(NSString *)title position:(CGPoint)position
{
    CCLabelTTF *label = [CCLabelTTF labelWithString:title
                                           fontName:@"Chalkduster"
                                           fontSize:16];
    label.anchorPoint = ccp(0, 0);
    
    label.positionType = CCPositionTypeNormalized;
    label.color        = [CCColor yellowColor];
    //    ccp = CGPointMake(0.5, 0.38);
    label.position     = position; // Middle of screen
    [self addChild:label];
    return label;
    
}

- (void)onBackClicked:(CCButton *)button
{
    [[CCDirector sharedDirector] popToRootSceneWithTransition:[CCTransition transitionCrossFadeWithDuration:1]];
}

- (void)onEnter
{
    [super onEnter];
    [[OALSimpleAudio sharedInstance]playBg:@"win_sound.mp3"
                                      loop:YES];
}

@end
