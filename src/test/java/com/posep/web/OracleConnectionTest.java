package com.posep.web;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class OracleConnectionTest {
	
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/posep?useSSL=false&serverTimezone=Asia/Seoul";
	private static final String USER = "posep";
	private static final String PW ="1234";
	
	@Test
	public void testConnection () throws Exception{
		Class.forName(DRIVER);
		
		try (Connection con = DriverManager.getConnection(URL, USER, PW)){
			System.out.println("JUNIT: " + con);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
