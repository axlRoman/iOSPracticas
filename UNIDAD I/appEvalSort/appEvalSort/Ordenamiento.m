//
//  Ordenamiento.m
//  appEvalSort
//
//  Created by Axel Roman on 03/03/24.
//

#import "Ordenamiento.h"

@implementation Ordenamiento

+ (NSArray *)metodoBurbuja:(NSArray *)vector {
    int comp, interc;
    comp = interc = 0;
    
    NSMutableArray *vecAux = [[NSMutableArray alloc] initWithArray:vector];
    
    for (int i = 0; i < [vecAux count] - 1; i++) {
        for (int j = (int)[vecAux count] - 1; j > i; j--) {
            comp++;
            if ([[vecAux objectAtIndex:(j - 1)] intValue] > [[vecAux objectAtIndex:j] intValue]) {
                int temp = [[vecAux objectAtIndex:(j - 1)] intValue];
                [vecAux replaceObjectAtIndex:j - 1 withObject:[vecAux objectAtIndex:j]];
                [vecAux replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:temp]];
                interc++;
            }
        }
    }
    
    NSLog(@"No. de Comparaciones = %d", comp);
    NSLog(@"No. de Intercambios  = %d", interc);
    
    return [vecAux copy];
}

+ (NSArray *)sort2:(NSArray *)unsortedArray {
    int count = (int)[unsortedArray count];
    if (count <= 1) {
        return unsortedArray;
    }
    
    int pivot = [[unsortedArray objectAtIndex: (count/2)] intValue];
    NSMutableArray *smallerThanArray = [NSMutableArray array];
    NSMutableArray *largerThanArray = [NSMutableArray array];
    NSMutableArray *pivotArray = [NSMutableArray array];
    [pivotArray addObject: @(pivot)];
    
    for (int e = 0; e < count; e++) {
        int num = [[unsortedArray objectAtIndex:e] intValue];
        
        if (num < pivot) {
            [smallerThanArray addObject: @(num)];
        }
        else if (num > pivot) {
            [largerThanArray addObject: @(num)];
        }
        else if (e != (count/2) && pivot == num) {
            [pivotArray addObject: @(num)];
        }
    }
 
    NSMutableArray *returnArray = [NSMutableArray array];
    [returnArray addObjectsFromArray: [self sort2: smallerThanArray]];
    [returnArray addObjectsFromArray: pivotArray];
    [returnArray addObjectsFromArray: [self sort2: largerThanArray]];
 
    return returnArray;
}
+ (NSArray *)insertionSort:(NSArray *)unsortedArray {
    NSMutableArray *sortedArray = [unsortedArray mutableCopy];
    int comp = 0;
    int inter = 0;
    
    for (NSUInteger i = 1; i < [sortedArray count]; i++) {
        id key = sortedArray[i];
        NSInteger j = i - 1;
        
        while (j >= 0 && [sortedArray[j] compare:key] == NSOrderedDescending) {
            sortedArray[j + 1] = sortedArray[j];
            j--;
            comp++;
            inter++;
        }
        
        sortedArray[j + 1] = key;
        inter++;
    }
    
    NSLog(@"No. de Comparaciones = %d", comp);
    NSLog(@"No. de Intercambios  = %d", inter);
    
    return [sortedArray copy];
}


@end
