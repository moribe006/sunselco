package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ManEnemyBean;

public class ManEnemyDao {
	final String URL = "jdbc:postgresql://localhost:5432/sunselco_db";
	final String USER = "postgres";
	final String PASSWORD = "password";

	public List<ManEnemyBean>findAll(){

		Connection conn =null;
		List<ManEnemyBean>manEnemyList= new ArrayList<>();

		try {
			Class.forName("org.postgresql.Driver");
			conn=DriverManager.getConnection(URL,USER,PASSWORD);

			String sql="SELECT HUMAN_ID,HITPOINT,POWER,ITEM_ID FROM HUMAN_T";
			PreparedStatement pStmt=conn.prepareStatement(sql);
			ResultSet rs=pStmt.executeQuery();

			while(rs.next()) {
				String name =rs.getString("HUMAN_ID");
				int  hp =rs.getInt("HITPOINT");
				int power =rs.getInt("POWER");
				String dropItem = rs.getString("ITEM_ID");
				ManEnemyBean man =new ManEnemyBean(name,hp,power,dropItem);
				manEnemyList.add(man);
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}finally {
			if(conn!=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return manEnemyList;
	}
}
