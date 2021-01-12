package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Product;
import BEAN.Users;
import DAO.ProductDAO;
import DB.DBConnection;

public class PhoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PhoneController() {
		super();
		// TODO Auto-generated constructor stub
	}

	private int idd = 0;

	public int getIdd() {
		return idd;
	}

	public void setIdd(int idd) {
		this.idd = idd;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		PrintWriter out = response.getWriter();
//		out.print(DBConnection.CreateConnection());
//		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//		rd.forward(request, response);
		String action = request.getServletPath();//Trả về một phần của URL yêu cầu được gọi từ servlet.
		switch (action) {
		case "/new":
			showNewForm(request, response);
			break;
		case "/insert":
			insertProduct(request, response);
			break;
		case "/delete":
			deleteProduct(request, response);
			break;
		case "/edit":
			showEditForm(request, response);
			break;
		case "/update":
			updateProduct(request, response);
			break;
		case "/login":
			login(request, response);
			break;
		case "/chitiet":
			chitietProduct(request, response);
			break;
		case "/show":
			showProduct(request, response);
			break;
		default:
			listProduct(request, response);
			break;
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("userName");
		String pass = request.getParameter("passWord");

		Users user1 = new Users(name, pass);

		Connection conn = DBConnection.CreateConnection();
		Users Users = ProductDAO.DisplayUser(conn, user1);

		if (Users != null) {
			try {
				setIdd(Users.getId());
				request.setAttribute("Users", Users);
				if(idd==1) {
				List<Product> listProduct = ProductDAO.getAllProduct(conn);
				request.setAttribute("listProduct", listProduct);
				RequestDispatcher rd = request.getRequestDispatcher("show.jsp");
				rd.forward(request, response);
				}
				else {
					List<Product> listProduct = ProductDAO.getAllProduct(conn);
					request.setAttribute("listProduct", listProduct);
					RequestDispatcher rd = request.getRequestDispatcher("list");
					rd.forward(request, response);
				}
			} catch (ServletException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		} else {
			try {
				String msgl2 = "Login Failed";
				request.setAttribute("messagel2", msgl2);
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			} catch (ServletException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

	private void chitietProduct(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = DBConnection.CreateConnection();
		try {
			Users users = ProductDAO.getIdUsers(conn, getIdd());
			request.setAttribute("userr", users);
			int id = Integer.parseInt(request.getParameter("id"));
			Product product = ProductDAO.getIdProduct(conn, id);
			request.setAttribute("product", product);
			RequestDispatcher rd = request.getRequestDispatcher("home2.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private void listProduct(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = DBConnection.CreateConnection();
		try {
			Users users = ProductDAO.getIdUsers(conn, getIdd());
			request.setAttribute("userr", users);
			List<Product> listProduct = ProductDAO.getAllProduct(conn);
			request.setAttribute("listProduct", listProduct);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = DBConnection.CreateConnection();
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String img = request.getParameter("img");
			String info = request.getParameter("info");
			String pricenew = request.getParameter("pricenew");
			String priceold = request.getParameter("priceold");
			String lable = request.getParameter("lable");
			String kind = request.getParameter("kind");
			Product product = new Product(id, name, img, info, pricenew, priceold, lable, kind);
			ProductDAO.updateProduct(conn, product);
			RequestDispatcher rd = request.getRequestDispatcher("list");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = DBConnection.CreateConnection();
			int id = Integer.parseInt(request.getParameter("id"));
			Product existProduct = ProductDAO.getIdProduct(conn, id);
			request.setAttribute("product", existProduct);
			Users users = ProductDAO.getIdUsers(conn, getIdd());
			request.setAttribute("userr", users);
			RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = DBConnection.CreateConnection();
			int id = Integer.parseInt(request.getParameter("id"));
			Product product = new Product(id);
			ProductDAO.deleteProduct(conn, product);
			RequestDispatcher rd = request.getRequestDispatcher("list");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void insertProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = DBConnection.CreateConnection();
			String name = request.getParameter("name");
			String img = request.getParameter("img");
			String info = request.getParameter("info");
			String pricenew = request.getParameter("pricenew");
			String priceold = request.getParameter("priceold");
			String lable = request.getParameter("lable");
			String kind = request.getParameter("kind");
			Product product = new Product(name, img, info, pricenew, priceold, lable, kind);

			ProductDAO.insertProduct(conn, product);
			RequestDispatcher rd = request.getRequestDispatcher("list");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = DBConnection.CreateConnection();
			Users users = ProductDAO.getIdUsers(conn, getIdd());
			request.setAttribute("userr", users);
			RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private void showProduct(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = DBConnection.CreateConnection();
			List<Product> listProduct = ProductDAO.getAllProduct(conn);
			request.setAttribute("listProduct", listProduct);
			Users users = ProductDAO.getIdUsers(conn, getIdd());
			request.setAttribute("userr", users);
			RequestDispatcher rd = request.getRequestDispatcher("show.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
