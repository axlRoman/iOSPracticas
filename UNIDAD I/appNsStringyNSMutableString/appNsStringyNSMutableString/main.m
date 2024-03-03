#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // inserta tu código aquí...
        // APP. CON CADENAS
        // APP. UTILIZANDO BLOQUES, USA TU CREATIVIDAD
        // PARA OBTENER UNA APLICACIÓN QUE PUEDA
        // MANEJAR OPERACIONES ARITMÉTICAS O DE MANEJO
        // DE CADENAS, PREFERIBLEMENTE QUE SEA LA
        // BASE PARA UN JUEGO
        
        NSString *str1 = @"tec laguna";
        NSString *str2 = @"World";
        NSString *str3;
        unsigned long len ;

        /* convierte a mayúsculas */
        str3 = [str2 uppercaseString];
        NSLog(@"Cadena en mayúsculas:  %@\n", str3 );

        /* concatena str1 y str2 */
        str3 = [str1 stringByAppendingFormat:@" %@", str2];
        NSLog(@"Cadena concatenada:  %@\n", str3 );

        /* longitud total de str3 después de la concatenación */
        len = [str3 length];
        NSLog(@"Longitud de Str3:  %lu\n", len );

        /* InitWithFormat */
        // str3 = [[NSString alloc] initWithFormat:@"%@ %@",str1,str2];
        str3 = str1;
        NSLog(@"Usando initWithFormat:  %@\n", str3 );
        
        str3 = [str1 uppercaseString];
        NSLog(@"Usando uppercaseString:  %@\n", str3 );
        
        // Aplicar diferentes métodos de la clase NSString
        str3 = [str1 capitalizedString];
        NSLog(@"Usando capitalizedString: %@\n", str3);
        
        str3 = [str1 substringToIndex:3];
        NSLog(@"Usando substringToIndex: %@\n", str3);
        
        NSRange rango = [str1 rangeOfString:@"la"];
        if (rango.location != NSNotFound) {
            NSLog(@"La subcadena 'la' se encontró en el índice %lu\n", rango.location);
        } else {
            NSLog(@"La subcadena 'la' no se encontró\n");
        }
        
        BOOL tienePrefijo = [str1 hasPrefix:@"tec"];
        NSLog(@"La cadena empieza con 'tec': %@\n", tienePrefijo ? @"SÍ" : @"NO");
        
        BOOL tieneSufijo = [str1 hasSuffix:@"una"];
        NSLog(@"La cadena termina con 'una': %@\n", tieneSufijo ? @"SÍ" : @"NO");
    }
    return 0;
}
