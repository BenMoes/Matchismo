//
//  Card.h
//  Matchismo
//
//  Created by Ben Moes on 02-02-13.
//  Copyright (c) 2013 Ben Moes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString * contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;

@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;
- (NSString *)description;

@end
