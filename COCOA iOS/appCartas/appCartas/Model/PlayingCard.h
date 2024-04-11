//
//  PlayingCard.h
//  appCartas
//
//  Created by Axel Roman on 31/03/24.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *) validSuits;
+(NSUInteger)maxRank;

@end

NS_ASSUME_NONNULL_END
