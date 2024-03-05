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
//
//        NSString *str1 = @"tec laguna";
//        NSString *str2 = @"World";
//        NSString *str3;
//        unsigned long len ;
//
//        /* convierte a mayúsculas */
//        str3 = [str2 uppercaseString];
//        NSLog(@"Cadena en mayúsculas:  %@\n", str3 );
//
//        /* concatena str1 y str2 */
//        str3 = [str1 stringByAppendingFormat:@" %@", str2];
//        NSLog(@"Cadena concatenada:  %@\n", str3 );
//
//        /* longitud total de str3 después de la concatenación */
//        len = [str3 length];
//        NSLog(@"Longitud de Str3:  %lu\n", len );
//
//        /* InitWithFormat */
//        // str3 = [[NSString alloc] initWithFormat:@"%@ %@",str1,str2];
//        str3 = str1;
//        NSLog(@"Usando initWithFormat:  %@\n", str3 );
//
//        str3 = [str1 uppercaseString];
//        NSLog(@"Usando uppercaseString:  %@\n", str3 );
//
//        str3 = [str1 lowercaseString];
//        NSLog(@"Usando uppercaseString:  %@\n", str3 );
//        NSLog(@"Usando uppercaseString:  %@\n", str1 );
//
//        if([str3 hasPrefix:@"tec"])
//            NSLog(@"La cadena inicia con tec");
//        else
//            NSLog(@"La cadena NO inicia con tec");
//
//        if([str3 hasSuffix:@"a"])
//            NSLog(@"La cadena termina con a");
//        else
//            NSLog(@"La cadena NO termina con a");
        
        //EJEMPLOS CON NSMutableString
        
        NSMutableString * cadena1;
        NSMutableString * cadena2;
        
        cadena1 = [NSMutableString stringWithString:@"Tec. Laguna"];
        
        cadena2 = cadena1;
        
        NSLog(@"Direccion de cadena1: %p, Direccion de cadena2: %p", cadena1, cadena2);
        
        NSLog(@"Cadena 1: %@", cadena1);
        NSLog(@"Cadena 2: %@", cadena2);
        
        [cadena2 appendString:@". Torreon Coahuila"];
        NSLog(@"Cadena 1: %@", cadena1);
        
        [cadena1 appendString:@". México 🇲🇽"];
        NSLog(@"Cadena 1: %@", cadena1);
        NSLog(@"Cadena 2: %@", cadena2);
        
        NSRange match;
        [cadena2 appendString:[cadena2 lowercaseString]];
        
        match = [cadena2 rangeOfString:@"COAHUILA"];
        match = [cadena2 rangeOfString:@"coah"];
        if(match.location == NSNotFound)
            NSLog(@"subcadena no encontrada");
        else
            NSLog(@"la cadena se encontro en la posicion: %lu", match.location);
        
        //REMPLAZAR O MODIFICAR
        NSMutableString * cadAux1 = [NSMutableString stringWithString:@"INSTITUTO TECNOLOGICO DE LA LAGUNA"];
        [cadAux1 replaceCharactersInRange:NSMakeRange(10, 11) withString:@"tecnologico"];
        NSLog(@"cadAux1 = %@",cadAux1);
        [cadAux1 replaceCharactersInRange:[cadAux1 rangeOfString:@"tecnologico"] withString:@"TECNOLOGICO"];
        NSLog(@"cadAux1 = %@",cadAux1);
        //BORRAR "DE LA"
        [cadAux1 deleteCharactersInRange:[cadAux1 rangeOfString:@"DE LA "]];
        NSLog(@"cadAux1 borrando \"DE LA\" = %@",cadAux1);
        
        //EJEMPLOS SUBCADENAS
        NSString *cadAux2;
        cadAux2 = [cadAux1 substringWithRange:NSMakeRange(10, 11)];
        NSLog(@"SUBCADENA 2 = %@",cadAux2);
        //HASTA
        cadAux2 = [cadAux1 substringToIndex:21];
        NSLog(@"SUBCADENA 2 = %@", cadAux2);
        //DESDE
        cadAux2 = [cadAux1 substringFromIndex:21];
        NSLog(@"SUBCADENA 2 = %@",cadAux2);
        
        NSMutableString *cadaux3 = [NSMutableString stringWithString:@"INSTITUTO"];
        NSMutableString *cadaux4 = [NSMutableString stringWithString:@"TECNOLOGICO DE LA LAGUNA, Torreon, Coah. MX"];
        
//        NSString *cadaux5 = [[NSString alloc]initWithFormat:@"%@%@",cadaux3,cadaux4];
        NSString *cadaux5 = [[NSString alloc]initWithFormat:@"%@%@",cadaux3,cadaux4];
        NSLog(@"CADENAS CONCATENADAS: %@\n\a\a", cadaux5);
        
        //EVALUACION
        //INVERTIR LA CADENA cadaux5 Y ASIGNARLA A OTRA CADENA
        
        NSMutableString *cadaux5Invertida = [NSMutableString stringWithCapacity:[cadaux5 length]];
        for (NSInteger i = [cadaux5 length] - 1; i >= 0; i--) {
            [cadaux5Invertida appendString:[NSString stringWithFormat:@"%C", [cadaux5 characterAtIndex:i]]];
        }
        NSLog(@"CADENA INVERTIDA: %@", cadaux5Invertida);
            
        
        
        
        /*
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
        NSLog(@"La cadena termina con 'una': %@\n", tieneSufijo ? @"SÍ" : @"NO");*/
    }
    return 0;
}
