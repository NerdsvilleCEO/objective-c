//
//  PlayingCard.h
//  Matchismo
//
//  Created by nerdsville on 10/18/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSArray *ranks;
@property (nonatomic) NSUInteger maxRank;
+(NSArray *)validSuits;
+(NSArray *)rankStrings;
+(NSUInteger)maxRank;
@end
