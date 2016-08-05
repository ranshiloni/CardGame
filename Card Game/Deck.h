//
//  Deck.h
//  Card Game
//
//  Created by Ran Shiloni on 8/4/16.
//  Copyright © 2016 Ran Shiloni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;


@end
