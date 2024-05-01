package userregister;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userdb {
// Static variables for database connection and query execution
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stat=null;
	private static ResultSet res=null;
    
	// Method to validate user login credentials
	public static boolean validate(String username, String password) {
		
		try {
			con = connectdb.getConnection();
			stat = con.createStatement();
			String sql = "select * from user where username='"+username+"' and password='"+password+"'";
			res = stat.executeQuery(sql);
			
			if (res.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	// Method to retrieve user details based on username

public static List<user> getuser(String userName) {
		
		ArrayList<user> user = new ArrayList<>();
		
		try {
			
			con = connectdb.getConnection();
			stat = con.createStatement();
			String sql = "select * from user where username='"+userName+"'";
			res = stat.executeQuery(sql);
			
			while (res.next()) {
				int id = res.getInt(1);
				String name = res.getString(2);
				String email = res.getString(3);
				String phone = res.getString(4);
				String username = res.getString(5);
				String password = res.getString(6);
				
				user user1 = new user(id,name,email,phone,username,password);
				user.add(user1);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return user;	
	}
	

//Method to insert a new user into the database
public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
	
	boolean isSuccess = false;
	
	try {
		con = connectdb.getConnection();
		stat = con.createStatement();
	    String sql = "insert into user values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
		int res = stat.executeUpdate(sql);
		
		if(res > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

//Method to update user details in the database
public static boolean updateuser(String id, String name, String email, String phone, String username, String password) {
	
	try {
		
		con = connectdb.getConnection();
		stat = con.createStatement();
		String sql = "update user set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
				+ "where id='"+id+"'";
		int res = stat.executeUpdate(sql);
		
		if(res > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

//Method to get user details based on user ID
public static List<user> getuserDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<user> user = new ArrayList<>();
	
	try {
		
		con = connectdb.getConnection();
		stat = con.createStatement();
		String sql = "select * from user where id='"+convertedID+"'";
		res = stat.executeQuery(sql);
		
		while(res.next()) {
			int id = res.getInt(1);
			String name = res.getString(2);
			String email = res.getString(3);
			String phone = res.getString(4);
			String username = res.getString(5);
			String password = res.getString(6);
			
			user c = new user(id,name,email,phone,username,password);
			user.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return user;	
}

//Method to delete a user from the database based on user ID
public static boolean deleteuser(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		
		con = connectdb.getConnection();
		stat = con.createStatement();
		String sql = "delete from user where id='"+convId+"'";
		int res = stat.executeUpdate(sql);
		
		if (res > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}}



