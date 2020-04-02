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
import model.ItemBean;

/**
 * Servlet implementation class Run
 */
@WebServlet("/Run")
public class Run extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//勇者の残りHP、MPを 配列[hhp,hmp] で値を取得
		String gethp = request.getParameter("hp");

		/*テキスト型で取得して、配列を取り出せないため、
		  splitを使って , ところで分割して配列を取り出せるように変換 */
		String[] gethpmp = gethp.split(",",0);

		//数字が文字列なので、int型に変換して配列から取得
		int hp = Integer.parseInt(gethpmp[0]);
		int mp = Integer.parseInt(gethpmp[1]);
		int kizu    = Integer.parseInt(gethpmp[2]);//傷薬
		int igu		= Integer.parseInt(gethpmp[3]);//胃薬
		int nazo	= Integer.parseInt(gethpmp[4]);//ぺぺ

		HttpSession session = request.getSession();
		HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");

		//アイテムリストを回す
		HttpSession session7 = request.getSession();
		List<ItemBean>itemList=(List<ItemBean>)session7.getAttribute("itemList");
		//javaすく（アイテム個数処理）
		 for(ItemBean a:hero.getPersonal_belogingsList()) {
			 if(a.getName().equals("傷薬")) {
				 if(kizu!=a.getHave()) {
				 a.setHave(kizu);
				 }}
			 if(a.getName().equals("胃薬")) {
				 if(igu!=a.getHave()) {
				 a.setHave(igu);
				 }}
			 if(a.getName().equals("謎の液体")) {
				 if(nazo!=a.getHave()) {
				 a.setHave(nazo);
				 }}}


		//HeroBeanにint型に変換した値をセットし、セッションに保存
		hero.setHp(hp);
		hero.setMp(mp);
		session.setAttribute("hero",hero );



		RequestDispatcher dispatcher=request.getRequestDispatcher("map.jsp");
		dispatcher.forward(request, response);
	}
}
