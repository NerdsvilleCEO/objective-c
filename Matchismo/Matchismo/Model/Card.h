//
//  Card.h
//  Matchismo
//
//  Created by nerdsville on 10/18/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isMatched) BOOL *matched;
@property (nonatomic, getter=isChosen) BOOL *chosen;
-(int)match:(Card *)card;
-(int)matchWithOtherCards:(NSArray *)otherCards;
@end
