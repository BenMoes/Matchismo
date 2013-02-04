//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Ben Moes on 02-02-13.
//  Copyright (c) 2013 Ben Moes. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
{
    if (!sender.isSelected) {
        Card *card = [self.deck drawRandomCard];
        [self.deck addCard:card atTop:YES];
        [sender setTitle:card.contents forState:UIControlStateSelected];
    }
    sender.selected = !sender.isSelected;
    self.flipCount++;
}

@end
