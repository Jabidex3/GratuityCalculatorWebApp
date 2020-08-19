package com.jabid;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jabid.util.UtilCls;

/**
 * Servlet implementation class Tip
 */
@WebServlet("/Tip")
public class Tip extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tip() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    UtilCls util = new UtilCls();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String a,b,c;
		a=request.getParameter("bill");
		b=request.getParameter("numPpl");
		c=request.getParameter("tip");
		boolean billChk = util.chkBill(a);
		boolean pplChk = util.chkPpl(b);
		boolean tipChk = util.chkTip(c);
		PrintWriter out = response.getWriter();
		if(billChk && pplChk && tipChk) {
		//	response.sendRedirect("output.jsp");
			String amt = util.tip(Double.valueOf(a),Double.valueOf(c),Integer.valueOf(b));
			out.println("<p style='text-align:center'>Calculated Tip Amount: $"+amt+"<p><br><div style='text-align:center'> <a href='index.jsp'>Return to Calculator</a></div>");
		}
		else {
			out.println("<p style='text-align:center'>Invalid Information Provided! Please make sure you entered valid information!</p><br> <div style='text-align:center'> <a href='index.jsp'>Return to Calculator To Try Again</a></div>");
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
