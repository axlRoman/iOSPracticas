//
//  ViewController.m
//  appCartas
//
//  Created by Axel Roman on 31/03/24.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
//@property (nonatomic) int flipCount;
//@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;


@property (nonatomic) int index;
@end

@implementation ViewController

/*- (Deck *) deck {
    
    if(!_deck)
        _deck = [self createDeck];
    
    return _deck;
}*/

- (CardMatchingGame *) game {
    
    if(!_game)
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    
    return _game;
}

- (Deck *) createDeck {
    
    return [[PlayingCardDeck alloc] init];
}

/*- (void) setFlipCount:(int)flipCount {
    
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}*/

- (IBAction)btnCarta:(UIButton *)sender {
    
    NSInteger chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
    
    //self.flipCount++;
}

- (void) updateUI {
    
    for(UIButton *cardButton in self.cardButtons){
        NSInteger cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", self.game.score];
    }
}

- (NSString *) titleForCard:(Card *) card {
    
    return card.isChosen ? card.contents : @"";
}

- (UIImage *) backgroundImageForCard:(Card *) card {
    
    return [UIImage imageNamed:card.isChosen ? @"frentehd" : @"atrashd"];
}
@end
