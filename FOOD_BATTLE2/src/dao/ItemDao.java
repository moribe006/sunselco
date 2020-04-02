package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ItemBean;

public class ItemDao {
	final String URL = "jdbc:postgresql://localhost:5432/sunselco_db";
	final String USER = "postgres";
	final String PASSWORD = "password";

	public List<ItemBean>findAll(){

		Connection conn =null;
		List<ItemBean>ItemList= new ArrayList<>();

		try {
			Class.forName("org.postgresql.Driver");
			conn=DriverManager.getConnection(URL,USER,PASSWORD);

			String sql="SELECT ITEM_ID,HITPOINT,MANPUKUPOINT FROM ITEM_T ";
			PreparedStatement pStmt=conn.prepareStatement(sql);
			ResultSet rs=pStmt.executeQuery();

			while(rs.next()) {
				String name =rs.getString("ITEM_ID");
				int hp=rs.getInt("HITPOINT");
				int mp =rs.getInt("MANPUKUPOINT");
				//	UserBean userlogin=new UserBean();
				ItemBean item =new ItemBean(name,hp,mp);
				ItemList.add(item);
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
		return ItemList;
	}

}