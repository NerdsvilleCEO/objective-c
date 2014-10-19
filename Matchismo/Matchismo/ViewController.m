//
//  ViewController.m
//  Matchismo
//
//  Created by nerdsville on 10/18/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *playingCardDeck;
@end

@implementation ViewController
-(Deck *)playingCardDeck{
    if(!_playingCardDeck) _playingCardDeck = [[PlayingCardDeck alloc] init];
    return _playingCardDeck;
}
-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",flipCount];
}
- (IBAction)onCardTouchUp:(UIButton *)sender {
    Card *card = [self.playingCardDeck drawRandomCard];
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
