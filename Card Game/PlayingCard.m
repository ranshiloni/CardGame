//
//  PlayingCard.m
//  Card Game
//
//  Created by Ran Shiloni on 8/4/16.
//  Copyright © 2016 Ran Shiloni. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents {
    // Retrieve formatted representation of the Card
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // Because we set the setter AND getter



- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    //if suit is nil, return '?'
    return _suit ? _suit : @"?";
}



+ (NSArray *) validSuits {
    return @[@"♥︎",@"♣︎",@"♠︎",@"♦︎"];
}

+ (NSArray *) rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9",@"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank {
    return [[self rankStrings]count]-1;
}

- (void)setRank:(NSUInteger)rank{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}
@end
