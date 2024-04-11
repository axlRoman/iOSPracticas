//
//  main.m
//  appJuego
//
//  Created by Axel Roman on 16/03/24.
//

#import <Foundation/Foundation.h>

// Arreglo de palabras posibles
NSArray *palabras = @[@"COCODRILO", @"GATO", @"PERRO", @"CABALLO", @"ELEFANTE", @"TIGRE", @"LEON", @"CANGURO", @"JIRAFA"];

// Función para seleccionar una palabra aleatoria del arreglo
NSString *seleccionarPalabraAleatoria() {
    NSUInteger index = arc4random_uniform((unsigned int)[palabras count]);
    return [palabras objectAtIndex:index];
}

// Creamos un NSMutableString para almacenar las letras adivinadas
NSMutableString *palabraAdivinada;

// Función para mostrar la palabra adivinada con las letras adivinadas hasta el momento
void mostrarPalabraAdivinada() {
    for (NSUInteger i = 0; i < [palabraAdivinada length]; i++) {
        NSString *letra = [palabraAdivinada substringWithRange:NSMakeRange(i, 1)];
        printf("%s ", [letra UTF8String]);
    }
    printf("\n\n");
}

// Función para procesar la letra ingresada por el jugador
void procesarLetra(NSString *letra, NSString *palabraSecreta) {
    BOOL acierto = NO;
    for (NSUInteger i = 0; i < [palabraSecreta length]; i++) {
        NSString *letraSecreta = [palabraSecreta substringWithRange:NSMakeRange(i, 1)];
        if ([letraSecreta isEqualToString:letra]) {
            [palabraAdivinada replaceCharactersInRange:NSMakeRange(i, 1) withString:letra];
            acierto = YES;
        }
    }
    if (!acierto) {
        printf("¡Letra incorrecta!\n");
    }
}

// Función principal para el juego
void jugar() {
    // Seleccionamos una palabra aleatoria del arreglo
    NSString *palabraSecreta = seleccionarPalabraAleatoria();
    palabraAdivinada = [NSMutableString stringWithString:[@"_" stringByPaddingToLength:[palabraSecreta length] withString:@"_" startingAtIndex:0]];
    int intentos = 5;
    printf("¡Bienvenido al juego de adivinanza de palabras!\n");
    printf("La palabra tiene %lu letras.\n", (unsigned long)[palabraSecreta length]);
    mostrarPalabraAdivinada();
    
    while (intentos > 0 && [palabraAdivinada rangeOfString:@"_"].location != NSNotFound) {
        printf("Ingrese una letra:\n");
        char input[5];
        scanf("%s", input);
        NSString *letra = [NSString stringWithUTF8String:input];
        if ([letra length] == 1) {
            procesarLetra(letra, palabraSecreta);
            mostrarPalabraAdivinada();
            if (![palabraAdivinada containsString:letra]) {
                intentos--;
                printf("Te quedan %d intentos.\n\n", intentos);
            }
        } else {
            printf("Por favor, ingrese solo una letra.\n");
        }
    }
    
    if ([palabraAdivinada rangeOfString:@"_"].location != NSNotFound) {
        printf("¡Lo siento! Has agotado todos tus intentos. La palabra era %s.\n", [palabraSecreta UTF8String]);
    } else {
        printf("¡Felicidades! ¡Has adivinado la palabra!\n");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Iniciar el juego
        jugar();
    }
    return 0;
}
