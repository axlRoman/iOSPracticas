//
//  Deck.h
//  appCartas
//
//  Created by Axel Roman on 01/04/24.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;

-(Card *) drawRandomCard;

@end

NS_ASSUME_NONNULL_END
