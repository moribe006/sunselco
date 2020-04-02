package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.WeaponBean;



public class WeaponDao{
	final String URL = "jdbc:postgresql://localhost:5432/sunselco_db";
	final String USER = "postgres";
	final String PASSWORD = "password";

	public List<WeaponBean>findAll(){
		Connection conn =null;
		List<WeaponBean>weaponList= new ArrayList<>();

		try {
			Class.forName("org.postgresql.Driver");
			conn=DriverManager.getConnection(URL,USER,PASSWORD);

			String sql="SELECT WEAPON_ID,POWER,HUNGRY FROM WEAPON_T ORDER BY weapon_id DESC";
			PreparedStatement pStmt=conn.prepareStatement(sql);
			ResultSet rs=pStmt.executeQuery();

		while(rs.next()) {
			String name =rs.getString("weapon_id");
			int power=rs.getInt("power");
			int hungry =rs.getInt("hungry");
			//	UserBean userlogin=new UserBean();
			WeaponBean weapon =new WeaponBean(name,power,hungry);
			weaponList.add(weapon);
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
		return weaponList;
	}
}