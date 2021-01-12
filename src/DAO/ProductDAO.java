package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Product;
import BEAN.Users;

public class ProductDAO {
	public static List<Product> getAllProduct(Connection conn) {
		List<Product> listProduct = new ArrayList<>();

		String sql = "select *from product";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String img = rs.getString("img");
				String info = rs.getString("info");
				String pricenew = rs.getString("pricenew");
				String priceold = rs.getString("priceold");
				String lable = rs.getString("lable");
				String kind = rs.getString("kind");
				Product product = new Product(id, name, img, info, pricenew, priceold, lable, kind);
				listProduct.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public static Users DisplayUser(Connection conn, Users us) {
		Users user1 = null;

		String sql = "select *from login where user = ? and password = ?";
		try {
			// truyen truy van sql cho doi tuong PreparedStatement-------------
			PreparedStatement ptmt = conn.prepareStatement(sql);

			ptmt.setString(1, us.getUser());
			ptmt.setString(2, us.getPassword());

			ResultSet rs = ptmt.executeQuery();
			if (rs.next()) {
				int id = rs.getInt("id");
				String user = rs.getString("user");
				String password = rs.getString("password");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				user1 = new Users(id, user, password, firstname, lastname);
			}
			ptmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user1;
	}

	public static Users getIdUsers(Connection conn, int id) {
		Users users = null;
		String sql = "select *from login where id=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				String user = rs.getString("user");
				String password = rs.getString("password");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				users = new Users(id, user, password, firstname, lastname);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

	public static Product getIdProduct(Connection conn, int id) {
		Product Product = null;
		String sql = "select *from product where id=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				String name = rs.getString("name");
				String img = rs.getString("img");
				String info = rs.getString("info");
				String pricenew = rs.getString("pricenew");
				String priceold = rs.getString("priceold");
				String lable = rs.getString("lable");
				String kind = rs.getString("kind");
				Product = new Product(id, name, img, info, pricenew, priceold, lable, kind);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Product;
	}
	public static boolean deleteProduct(Connection conn, Product product) {
		String sql = "delete from product where id = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, product.getId());
			if (pst.executeUpdate()>0) 
				return true;
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean updateProduct(Connection conn, Product product) {
		boolean rowUpdated = false;
		String sql = "update product set name = ?, img = ?, info = ?, pricenew = ?,priceold = ?,lable = ?,kind = ? where id = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, product.getName());
			pst.setString(2, product.getImg());
			pst.setString(3, product.getInfo());
			pst.setString(4, product.getPricenew());
			pst.setString(5, product.getPriceold());
			pst.setString(6, product.getLable());
			pst.setString(7, product.getKind());
			pst.setInt(8, product.getId());
			if (pst.executeUpdate() > 0)
				return rowUpdated;
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rowUpdated;
	}
	public static boolean insertProduct(Connection conn, Product product) {
		boolean rowInserted = false;
		String sql = "insert into product(name, img, info, pricenew, priceold, lable, kind) values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, product.getName());
			pst.setString(2, product.getImg());
			pst.setString(3, product.getInfo());
			pst.setString(4, product.getPricenew());
			pst.setString(5, product.getPriceold());
			pst.setString(6, product.getLable());
			pst.setString(7, product.getKind());
			if (pst.executeUpdate() > 0)
				rowInserted = true;
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowInserted;
	}
}
