//
//  Card.m
//  Card Game
//
//  Created by Ran Shiloni on 03/08/2016.
//  Copyright © 2016 Ran Shiloni. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents])
            score = 1;
    };
    
    return score;
};

@end
