import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseFactory {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static void setupDatabase() throws SQLException {
		con = DriverManager.getConnection("jdbc:mysql://localhost/?autoReconnect=true&useSSL=false", "test", "password");
		stmt = con.createStatement();
		String s = "CREATE DATABASE INVENTORY";
		stmt.executeUpdate(s);
		s = "USE INVENTORY";
		stmt.executeUpdate(s);
		
		//create Employee table
		s = "CREATE TABLE EMPLOYEE(ID INTEGER NOT NULL AUTO_INCREMENT, LAST_NAME VARCHAR(50), FIRST_NAME VARCHAR(50),"
		  + " PASSWORD VARCHAR(20), MANAGER BOOL, ADMIN BOOL, PRIMARY KEY(ID))";
		stmt.executeUpdate(s);
		
		//create Item table
		s = "CREATE TABLE ITEM(ID INTEGER NOT NULL AUTO_INCREMENT, DESCRIPTION VARCHAR(50), COST DOUBLE, PRICE DOUBLE,"
		  + "PRIMARY KEY(ID))";
		stmt.executeUpdate(s);
	}
	
	public static void deleteDatabase() throws SQLException {
		con = DriverManager.getConnection("jdbc:mysql://localhost/?autoReconnect=true&useSSL=false", "test", "password");
		stmt = con.createStatement();
		String s = "DROP DATABASE INVENTORY";
		stmt.executeUpdate(s);
	}
	
	public static void executeStatement(String statement) throws SQLException {
		con = DriverManager.getConnection("jdbc:mysql://localhost/MASTER?autoReconnect=true&useSSL=false", "test", "password");
		stmt = con.createStatement();
		stmt.executeUpdate(statement);
	}
	
	public static ResultSet executeQuery(String query) throws SQLException {
		con = DriverManager.getConnection("jdbc:mysql://localhost/MASTER?autoReconnect=true&useSSL=false", "test", "password");
		stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		return rs;
	}

}
