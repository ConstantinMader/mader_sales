package test;

import java.sql.Connection;
import java.sql.SQLException;

import connection.OracleConnection;
import model.CustomerException;

public class A_TestConnection {
	
	
	public static void main(String args) {
		try {
			OracleConnection oracon = new OracleConnection();
			oracon.open();
			Connection con = oracon.getConnection();
			System.out.println(con.getMetaData().getDatabaseMajorVersion());
			oracon.close();
		} catch (SQLException e ) {
			System.out.println(e.getMessage());
		} catch (CustomerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public A_TestConnection() {
		
	}

}
