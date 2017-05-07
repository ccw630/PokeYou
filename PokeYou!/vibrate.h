//
//  vibrate.h
//  PokeYou!
//
//  Created by Xin ZHANG on 7/5/17.
//  Copyright © 2017 ccw630. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef vibrate_h
#define vibrate_h

@interface Vibrate : NSObject

+ (void)vibrateDo :(int)time st:(float)strength;

@end



#endif /* vibrate_h */
