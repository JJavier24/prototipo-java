
package Candey;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class clienteDAO {
   
database db = new database();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    
    public cliente validar(String email, String password){
         cliente cl = new cliente();
        String sql = "select * from users where email=? and password=?";
        try {
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                cl.setEmail(rs.getString("email"));
                cl.setPassword(rs.getString("password"));
                
            }
        } catch (Exception e) {
        }
        return cl;
    }
    
    public int agregar(cliente cl ){
    String setencia = "INSERT INTO users(email, password) VALUES(?, ?)";
        try {
            con = db.getConnection();
            ps = con.prepareStatement(setencia);
            ps.setString(1, cl.getEmail());
            ps.setString(2, cl.getPassword());
            ps.executeUpdate();
            
        } catch (Exception e) {
            
        }
        return r;
        
    }
    
     public void eliminar(String email){
    String S = "delete from users where email=" + email;
        try {
            con = db.getConnection();
            ps = con.prepareStatement(S);
            ps.executeUpdate();
            
        } catch (SQLException e) {
            
        }
     
        
    }
    
    
}
