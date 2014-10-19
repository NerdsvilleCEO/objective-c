//
//  Card.m
//  Matchismo
//
//  Created by nerdsville on 10/18/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

#import "Card.h"

@implementation Card
-(int)match:(Card *)card{
    int score = 0;
    if([card.contents isEqualToString:self.contents]){
        score = 1;
    }
    return score;
}
-(int)matchWithOtherCards:(NSArray *)otherCards{
    int score = 0;
    for(Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}
@end
