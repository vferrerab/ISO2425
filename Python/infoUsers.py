"""
infoUsers.py
Víctor Ferrera Brioa
Fecha: 26/03/20205
"""
import os
import cpuinfo as cpu

root=os.getuid()

if root == 0:
    while True:
        print("1 - Mostrar info. del SSOO y de la CPU")
        print("2 - Mostrar info. de un usuario si existe, si no existe se crea")
        print("3 - Comprobar si existe y si es directorio, si no se crea")
        print("4 - Salir")
        opcion=int(input("Elige una de las opciones: "))
        match opcion:
            case 1:
                print("Mi SSOO es",os.uname().sysname)
                print(cpu.get_cpu_info()["brand"])
            case 2:
                usuario=input("Dime un usuario: ")
                fichero=open("/etc/passwd","r")
                contenido=fichero.readlines()
                enc=0
                for i in contenido:
                    if usuario in i:
                        enc=1
                        final=i
                        break
                if enc == 1:
                    print(final)
                else:
                    print("El usuario no existe, así que se creará")
                    os.system("useradd",usuario)
            case 3:
                dire=input("Introduce un direcorio: ")
                if os.path.exists(dire):
                    if os.path.isdir(dire):
                        print("Existe y es un directorio")
                    else:
                        print("No es un directorio")
                else:
                    print(dire,"no existe, así que se creará")
                    os.mkdir(dire)
            case 4:
                print("Saliendo del programa...")
                break
            case _:
                print("Esta opción no es válida")
else:
    print("El usuario con el que se ha accedido no tiene permiso")