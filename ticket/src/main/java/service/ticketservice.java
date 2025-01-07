package service;


import java.sql.ResultSet;



import java.sql.Statement;


import model.ticket;
import utils.DBConnect;

public class ticketservice {
	public void raiseticket(ticket t1) {
		try {
			
			String query="insert into ticket values ('"+t1.getRnum()+"','"+t1.getName()+"','"+t1.getEmail()+
			"','"+t1.getSubject()+"','"+t1.getDescip()+"')";
			
			Statement statement=DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
		}	
		
	}
	
	public boolean validatedata(ticket t1) {
		
	try {
		
		String query="select * from ticket where registration_number='"+t1.getRnum()+"' and email='"+t1.getEmail()+"'";
		Statement statement=DBConnect.getConnection().createStatement();
		
		ResultSet rs= statement.executeQuery(query);
		
		if(rs.next()) { 
			return true;
		}
		
	} catch (Exception e) {
		
		e.printStackTrace();
		
	}
	return false;
	}
	
	public ticket getone(ticket t1) {
		
		try {
			
			String query="select * from ticket where registration_number='"+t1.getRnum()+"' and email='"+t1.getEmail()+"'";
			Statement statement=DBConnect.getConnection().createStatement();
			
			ResultSet rs= statement.executeQuery(query);
			
			if(rs.next()) { 
				t1.setRnum(rs.getString("rnum"));
				t1.setName(rs.getString("name"));
				t1.setEmail(rs.getString("email"));
				t1.setSubject(rs.getString("subject"));
				t1.setDescip(rs.getString("descip"));
				
				return t1;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return null;
		}
	

		}

	

		
	


