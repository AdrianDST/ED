package Almacenar;

import java.util.ArrayList;
import java.util.Scanner;

public class Almacen {

    static Scanner teclado = new Scanner(System.in);
    static ArrayList<Object[]> almacenr;

    public static void main(String[] args) {

        int opcion = 0;

        almacenr = new ArrayList();
        do {
            System.out.println("1- Agregar");
            System.out.println("2- Listar");
            System.out.println("3- Buscar");
            System.out.println("4- Salir");
            System.out.println("Introduce opción");
            opcion = teclado.nextInt();
            switch (opcion) {
                case 1:
                    agregarObjeto();
                    break;
                case 2:
                    listarObjeto();
                    break;
                case 3:
                    System.out.println("Qué objeto quieres buscar");
                    String objetoBuscar = teclado.next();
                    buscarObjeto(objetoBuscar);
                    break;
                case 4:
                    System.out.println("Saliendo");
                    break;
                default:
                    System.out.println("Introduce opción valida");
                    break;
            }

        } while (opcion != 4);

    }





    public static void listarObjeto() {
        if (!almacenr.isEmpty()){
            for (Object[] elemento : almacenr) {
                for (Object item : elemento) {
                    System.out.print(item + " ");
                }
                System.out.println();
            }
        }else {
            System.out.println("la lista está vacia");
        }

    }

    public static void agregarObjeto() {


        System.out.println("Que objeto va a agregar");
        String Objeto = teclado.next();
        System.out.println("En que lugar va a estar");
        String Sitio = teclado.next();
        Object[] unPaquete = {Objeto,Sitio};

        int encontrados = 0;

        for (Object[] elemento : almacenr) {
            if (elemento[1].equals(Sitio)) {
                encontrados++;
                break;
            }
        }
        if (encontrados > 0) {
            System.out.println("El lugar ya esta ocupado");
        } else {
            almacenr.add(unPaquete);
        }
    }

    public static void buscarObjeto(String paquete) {

        for (Object[] elemento : almacenr) {
            if (elemento[0].equals(paquete)) {
                for (Object item : elemento) {
                    System.out.print(item + " ");
                }
                System.out.println();
                break;
            }

        }

    }
}
