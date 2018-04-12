package com.meession.am.service.station;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meession.am.dao.StationDAO;
import com.meession.am.entity.Station;
import com.meession.common.DAOFactory;

/**
 * Servlet implementation class QueryAllStationServlet
 */
public class QueryAllStationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryAllStationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//String stationName = request.getParameter("stationName");
		//String level = request.getParameter("level");
		//String describe = request.getParameter("describe");
		HttpSession session = request.getSession();
		String admin = (String) session.getAttribute("admin");
		if(admin == null)
			System.out.println("请以管理员登陆");
		else{
		StationDAO stationDao = DAOFactory.getIStationDAOInstance();
		
		 try {
			 List<Station> list = new ArrayList<Station>();
			 list = stationDao.findALLStation();
			 
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
