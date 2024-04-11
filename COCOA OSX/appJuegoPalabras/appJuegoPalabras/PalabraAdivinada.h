//
//  PalabraAdivinada.h
//  appJuegoPalabras
//
//  Created by Axel Roman on 18/03/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PalabraAdivinada : NSObject

@property (nonatomic, strong) NSMutableString *palabra;

- (instancetype)initWithLength:(NSUInteger)length;
- (void)mostrar;
- (void)procesarLetra:(NSString *)letra enPalabraSecreta:(NSString *)palabraSecreta;

@end

NS_ASSUME_NONNULL_END
