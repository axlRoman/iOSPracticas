//
//  Ordenamiento.h
//  appEvalSort
//
//  Created by Axel Roman on 03/03/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ordenamiento : NSObject

+ (NSArray *)metodoBurbuja:(NSArray *)vector;
+ (NSArray *)sort2:(NSArray *)unsortedArray;
+ (NSArray *)insertionSort:(NSArray *)unsortedArray;

@end

NS_ASSUME_NONNULL_END
