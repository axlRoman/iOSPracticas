//
//  main.cpp
//  appArchivoCPP
//
//  Created by Usuario invitado on 09/02/24.
//

#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, const char * argv[]) {
    string archivo, path;
    cout <<"Archivo: ";
    getline(cin, archivo, '\n');
    path = "/Users/Guest/Desktop/";
    path += archivo;
    string cadena;
    ifstream datos(path);
    if(datos.fail())
        cout<<"Archivo No Encontrado"<<endl;
    else{
        while (!datos.eof()) {
            getline(datos,cadena);
            cout<<cadena<<endl;
        }
    }
    return 0;
}
