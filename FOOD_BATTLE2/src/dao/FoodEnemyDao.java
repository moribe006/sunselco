package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.FoodEnemyBean;



public class FoodEnemyDao {
	final String URL = "jdbc:postgresql://localhost:5432/sunselco_db";
	final String USER = "postgres";
	final String PASSWORD = "password";

	public List<FoodEnemyBean> findAll(){

		Connection conn =null;
		List<FoodEnemyBean>foodEnemyList= new ArrayList<>();

		try {
			Class.forName("org.postgresql.Driver");
			conn=DriverManager.getConnection(URL,USER,PASSWORD);

			String sql="SELECT FOOD_ID,HITPOINT,KCAL,ITEM_ID FROM FOOD_T ";
			PreparedStatement pStmt=conn.prepareStatement(sql);
			ResultSet rs=pStmt.executeQuery();

			while(rs.next()) {
				String name =rs.getString("FOOD_ID");
				int hp =rs.getInt("HITPOINT");
				int kcal =rs.getInt("KCAL");
				String dropItem = rs.getString("ITEM_ID");
				//	UserBean userlogin=new UserBean();
				FoodEnemyBean food =new FoodEnemyBean(name,hp,kcal,dropItem);
				foodEnemyList.add(food);
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
		return foodEnemyList;
	}

}
