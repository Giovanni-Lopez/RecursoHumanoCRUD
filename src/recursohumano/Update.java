package recursohumano;

import java.sql.SQLException;
import java.util.Scanner;

/**
 *
 * @author Giovanni López
 */
public class Update {
    Update() throws SQLException{
        Scanner leer = new Scanner(System.in);
        Persona person = new Persona();
        ConexionCRUD utilerias = new ConexionCRUD();
        
        System.out.println("<< ACTUALIZAR REGISTROS >>");
        
        System.out.println("Ingresar id del registro a modificar: ");
        person.setIdPersona(Integer.parseInt(leer.nextLine()));
        
        String tablaBuscar = "tb_contacto";
        String camposBuscar = "id_contacto, nom_contacto, email_contacto, tel_contacto";
        String condicionBuscar = "id_contacto = " + person.getIdPersona();
        utilerias.desplegarRegistros(tablaBuscar, camposBuscar, condicionBuscar);
        
        System.out.println("Nombre: ");
        person.setNomPersona(leer.nextLine());
        
        System.out.println("Correo electronico");
        person.setEmailPersona(leer.nextLine());
        
        System.out.println("Telefono: ");
        person.setTelPersona(leer.nextLine());
        
        String tabla = "tb_contacto";
        String camposValoresNuevos = "nom_contacto = '" + person.getNomPersona() + "', email_contacto = '" + 
                person.getEmailPersona() + "', tel_contacto = '" + person.getTelPersona() + "'";
        
        utilerias.actualizarEliminarRegistro(tabla, camposValoresNuevos, condicionBuscar);
        System.out.println("Modificado correctamente!");
        MenuPrincipal.desplegarMenu();
    }
}
