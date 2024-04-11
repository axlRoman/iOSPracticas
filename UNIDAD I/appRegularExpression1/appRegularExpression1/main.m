//
//  main.m
//  appRegularExpression1
//
//  Created by Axel Roman on 09/04/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *string1 = @"NIÑOS y niñas, atentos a la siguiente informacion: el 9 de abril del 2024 NO habrá clases, por el eclipse 🌑";
        
        //        NSString *patronLetras = @"[A-Za-z]|[ñÑ]";
        NSString *patronLetras = @"\\w|[ñÑ]|[AEIOUaeiouÁÉÍÓÚáéíóú]";
        
        NSString *patronVocales = @"[AEIOUaeiouÁÉÍÓÚáéíóú]";
        //[^aeiouAEIOU]
        
        
        //        NSString *patronDigitos = @"[0-9]";
        NSString *patronDigitos = @"\\d";
        
        //determinar espacios en blanco comas, dos puntos, caracteres, DIVERSOS
        NSString *patronEspacio = @"\\s";
        
        NSError *error = NULL;
        NSRegularExpression *expRegularLetras = [NSRegularExpression regularExpressionWithPattern:patronLetras options:NSRegularExpressionCaseInsensitive error:&error];
        
        NSArray *matchesLetras = [expRegularLetras matchesInString:string1 options:0 range:NSMakeRange(0, string1.length)];
        
        NSRegularExpression *expRegularVocales = [NSRegularExpression regularExpressionWithPattern:patronVocales options:NSRegularExpressionCaseInsensitive error:&error];
        
        NSArray *matchesVocales = [expRegularVocales matchesInString:string1 options:0 range:NSMakeRange(0, string1.length)];
        
        NSRegularExpression *expRegularDigitos = [NSRegularExpression regularExpressionWithPattern:patronDigitos options:NSRegularExpressionCaseInsensitive error:&error];
        
        NSArray *matchesDigitos = [expRegularDigitos matchesInString:string1 options:0 range:NSMakeRange(0, string1.length)];
        
        NSLog(@"Cadena a Analizar: %@",string1);
        NSLog(@"Cantidad de Caracteres: %d",(int)string1.length);
        int cantLetras = (int) matchesLetras.count;
        int cantVocales = (int) matchesVocales.count;
        NSLog(@"Cant. de Vocales: %d", cantVocales);
        NSLog(@"Cant de Consonantes: %d", cantLetras-cantVocales);
        
        int cantDigitos = (int) matchesDigitos.count;
        NSLog(@"Cant. de Digitos: %d", cantDigitos);
        
        //Archivos en Objective-C
        NSMutableString *cadenaMutable = [[NSMutableString alloc]initWithString:string1];
        NSLog(@"Cadena 1: %@", cadenaMutable);
        NSString *nomArch = @"archivoERegulares.txt";
        
        NSString *path = [NSHomeDirectory()stringByAppendingPathComponent:nomArch];
        NSLog(@"Path: %@", path);
        [cadenaMutable writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        
        NSLog(@"ARCHIVO GUARDADO");
        NSError *errorArchivo;
        //LEER EL ARCHIVO
        NSString*string2 = [[NSString alloc]initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&errorArchivo];
        
        if(!string2)
            NSLog(@"ERROR, ARCHIVO NO ENCONTRADO: %@",[errorArchivo localizedDescription]);
        else
            NSLog(@"CONTENIDO DEL ARCHIVO: \n %@",string2);
    }
    return 0;
}
