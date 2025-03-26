"""
dirFile.py
Víctor Ferrera Brioa
Fecha: /03/20205
"""
import os
import shutil

listaDirectorios=[]
listaArchivos=[]

rutas=open("rutas.txt","r")
contenido=rutas.readlines()

for i in contenido:
    r=i.strip()
    if os.path.isfile(r):
        listaArchivos.append(r)
    elif os.path.isdir(r):
        listaDirectorios.append(r)

while True
    print("A - Eliminar fichero")
    print("B - Mostrar info de un directorio")
    print("C - Copiar fichero en destino a elegir")
    print("D - Mostrar lista elegida por el usuario")
    print("E - Salir")
    opcion=input("Introduce la opción deseada")

    match opcion:
        case "A":
            fich=input("Di el nombre de un fichero: ")
            print("Se eliminará el fichero",fich)
            if os.path.isfile(fich):
                os.remove(fich)
            else:
                print(fich,"no es un fichero")
        case "B":
            directorio=input("Di el nombre de un directorio: ")
            if os.path.isdir(directorio):
                os.listdir(directorio)
            else:
                print(directorio,"no es un directorio")
        case "C":
            fichero=input("Di el nombre de un fichero: ")
            destino=input("Introduce la ruta donde quieres copiarlo: ")
            if os.path.isdir(destino):
                shutil.copy(fichero,destino)
            else:
                print("No se puede copiar el fichero aquí porque no es un directorio")
        case "D":
            print("1 - Mostrar la lista de archivos")
            print("2 - Mostrar la lista de directorio")
            eleccion=input("Elige la lista deseada: ")
            match eleccion:
                case 1:
                    print(listaArchivos)
                case 2:
                    print(listaDirectorios)
                case _:
                    print("Esta opción no existe")
        case "E":
            print("Saliendo...")
            break
        case _:
            print("Opción no válida")