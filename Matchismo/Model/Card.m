//
//  Card.m
//  Matchismo
//
//  Created by Ben Moes on 02-02-13.
//  Copyright (c) 2013 Ben Moes. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

- (NSString *)description
{
    return self.contents;
}

@end
