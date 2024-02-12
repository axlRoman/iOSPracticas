//
//  main.cpp
//  ArchivosCPP
//
//  Created by Adriana Sofia on 11/02/24.
//  Copyright © 2024 Francisco Axel. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <cctype> // Librería para funciones de caracteres

using namespace std;

int main(int argc, const char * argv[]) {
    string archivo, path;
    cout <<"Archivo: ";
    getline(cin, archivo, '\n');
    path = "/Users/adrianasofia/Desktop/";
    path += archivo;
    string cadena;
    ifstream datos(path);
    if(datos.fail())
        cout<<"Archivo No Encontrado"<<endl;
    else{
        int mayusculas = 0;
        int minusculas = 0;
        while (getline(datos,cadena)) {
            for(char c : cadena) {
                if(isupper(c)) // Comprueba si es mayúscula
                    mayusculas++;
                else if(islower(c)) // Comprueba si es minúscula
                    minusculas++;
            }
            cout<<cadena<<endl;
        }
        cout << "Cantidad de letras mayúsculas: " << mayusculas << endl;
        cout << "Cantidad de letras minúsculas: " << minusculas << endl;
    }
    return 0;
}
