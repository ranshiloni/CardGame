//
//  ViewController.m
//  Card Game
//
//  Created by Ran Shiloni on 03/08/2016.
//  Copyright © 2016 Ran Shiloni. All rights reserved..
//

#import "ViewController.h"
#import "PlayingCardDeck.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLable;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

-(Deck *)deck {
    if (!_deck) _deck = [self createDeck]; return _deck;
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}


- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipLable.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
}

- (IBAction)touchCardButton:(id)sender {
    
    if ([[sender currentTitle] length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"backcard"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        Card *card = [self.deck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"frontcard"]
                          forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
