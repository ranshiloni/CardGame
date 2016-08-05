//
//  ViewController.m
//  Card Game
//
//  Created by Ran Shiloni on 03/08/2016.
//  Copyright © 2016 Ran Shiloni. All rights reserved..
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "Deck.h"
#import "Card.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLable;
@property (nonatomic) int flipCount;
@end

@implementation ViewController


- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipLable.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   // PlayingCardDeck *deckforcards = [[PlayingCardDeck alloc]init];
    
    
}

- (IBAction)touchCardButton:(id)sender {
    
    if ([[sender currentTitle] length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"backcard"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"frontcard"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♥︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
