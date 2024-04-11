//
//  CardMatchingGame.h
//  appCartas
//
//  Created by Axel Roman on 04/04/24.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject

- (instancetype) initWithCardCount:(NSInteger) count usingDeck:(Deck *) deck;
- (void) chooseCardAtIndex:(NSUInteger) index;
- (Card *) cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end

NS_ASSUME_NONNULL_END
