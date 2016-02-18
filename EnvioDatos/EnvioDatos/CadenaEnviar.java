
/**
 *  class CadenaEnviar  
 * 
 * @author  
 * @version  
 */
public class CadenaEnviar
{
     
    private int[][] cadena;
    private int paridad;

    /**
     * Constructor de la clase CadenaEnviar
     */
    public CadenaEnviar(int filas, int columnas, int paridad)
    {
        cadena = new int[filas][columnas];
        this.paridad = paridad;
    }
    
    /**
     * Constructor de la clase CadenaEnviar
     */
    public CadenaEnviar()
    {
        cadena = new int[(int)Math.random() * 6][(int) Math.random() * 6];
        paridad = (int) Math.floor(Math.random() * 2);
    }

    /**
     *  
     */
    public void crearCadena()
    {
         for(int fila = 0; fila < cadena.length; fila++){
             for(int columna = 0; columna< cadena[fila].length; columna++){
                 cadena[fila][columna] = (int) Math.floor(Math.random() * 2);
             }
         }
    }
    
    /**
     *  
     */
    public void escribir()
    {
        for(int fila = 0; fila < cadena.length; fila++){
             for(int columna = 0; columna< cadena[fila].length; columna++){
                 System.out.print(cadena[fila][columna]);
             }
             System.out.println();
         }

    }

}
