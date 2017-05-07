//
//  vibrate.m
//  PokeYou!
//
//  Created by Xin ZHANG on 7/5/17.
//  Copyright © 2017 ccw630. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioServices.h>
#import <AudioToolbox/AudioToolbox.h>

void AudioServicesPlaySystemSoundWithVibration(int, id, id);

@implementation Vibrate : NSObject

+ (void) vibrateDo :(int)time st:(float)strength
{
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    NSMutableArray* arr = [NSMutableArray array ];
    
    [arr addObject:[NSNumber numberWithBool:YES]];
    [arr addObject:[NSNumber numberWithInt:time]];
    
    [arr addObject:[NSNumber numberWithBool:NO]];
    [arr addObject:[NSNumber numberWithInt:10]];
    
    
    [dict setObject:arr forKey:@"VibePattern"];
    [dict setObject:[NSNumber numberWithFloat:strength] forKey:@"Intensity"];
    
    AudioServicesPlaySystemSoundWithVibration(4095,nil,dict);
}

@end
