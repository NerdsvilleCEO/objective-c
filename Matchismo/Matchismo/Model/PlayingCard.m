//
//  PlayingCard.m
//  Matchismo
//
//  Created by nerdsville on 10/18/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
+(NSArray *)rankStrings
{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
-(NSString *)contents{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}
+(NSArray *)validSuits{
    return @[@"♣︎",@"♥︎",@"♦︎",@"♠︎"];
}
+(NSUInteger)maxRank
{
    return [[self rankStrings] count];
}
@end
