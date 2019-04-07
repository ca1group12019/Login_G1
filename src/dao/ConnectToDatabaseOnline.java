package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectToDatabaseOnline {
    public static Connection downDatabase() throws Exception{
        try {   
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection index = DriverManager.getConnection("jdbc:sqlserver://viet16130692.database.windows.net:1433;database=product;user=viet16130692@viet16130692;password={hoangviet1998HV};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
            System.out.println("everything fine");
            return index;
        } catch (SQLException ex) {
            System.out.println("Can not down database");
        }
        return null;
    }
    
public static void main(String[] args) throws Exception {
	ConnectToDatabaseOnline c = new ConnectToDatabaseOnline();
	c.downDatabase();
}
}
