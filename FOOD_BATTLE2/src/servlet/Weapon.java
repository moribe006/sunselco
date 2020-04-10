package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.HeroStatusBean;
import model.WeaponBean;

@WebServlet("/Weapon")
public class Weapon extends HttpServlet {
	private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	//eweapon name =weaponListからもらった武器名
    	String eweapon=request.getParameter("name");
		HttpSession session = request.getSession();
		HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");
		HttpSession session5 = request.getSession();
		List<WeaponBean> weaponList=(List<WeaponBean>)session5.getAttribute("weaponList");
		for(WeaponBean weapon:weaponList) {
			if(eweapon.equals(weapon.getName())) {
				if(weapon.getPersonal()) {
				hero.setEquipment(weapon);
				}else {
				}
		HttpSession session2 = request.getSession();
		session2.setAttribute("hero", hero);
		break;
		}}
		//装備をはずす
		if(eweapon.equals("nasi")) {
			hero.setEquipment(null);
		}

		/*Hero_Equipment weapon = new Hero_Equipment();
		List<WeaponBean>Personal_equipment = new ArrayList();*/

/*		weapon.setPersonal_equipment(eweapon);

		for(WeaponBean wlist : Personal_equipment) {
			if(eweapon.equals(wlist)) {
				hero.setEquipment(wlist.getName());
				hero.setPower(wlist.getPower());
				hero.setHungry(wlist.getHungry());
			}
		}*/


		RequestDispatcher dispatcher = request.getRequestDispatcher("map.jsp");
		dispatcher.forward(request, response);
    	}
		}
