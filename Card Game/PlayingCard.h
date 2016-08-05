//
//  PlayingCard.h
//  Card Game
//
//  Created by Ran Shiloni on 8/4/16.
//  Copyright © 2016 Ran Shiloni. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
- (void) setRank:(NSUInteger)rank;

@end
