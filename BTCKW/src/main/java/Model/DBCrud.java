package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBCrud {
	 public static List<Product> getAllProduct(Connection conn) {
	        List<Product> productList = null;
	        String sql = "SELECT * FROM product.sanpham";
	        PreparedStatement ps = null;
	        ResultSet rs = null;
	        productList = new ArrayList<>();

	        try {
	            ps = conn.prepareStatement(sql);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	            	 int id = rs.getInt("id");
	                 String name = rs.getString("name");
	                 String description = rs.getString("description");
	                 String material = rs.getString("material");
	                 String color = rs.getString("color");
	                 double price = rs.getDouble("price");
	                 String image = rs.getString("image");
	                 int sellID = rs.getInt("sell_ID");
	                 productList.add(new Product(id, name, description, material,color,price,image,sellID));
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                ps.close();
	                rs.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }

	        }

	        return productList;
	    }

	public User login(String username,String password) {
		Connection conn;	
		PreparedStatement ps = null;
        ResultSet rs = null;
		String query = "SELECT * FROM product.users where username = ? and password = ?";
		try {
			conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()) {
            	return new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5));
            }
            rs = ps.executeQuery();
		}catch (Exception e) {
			
		}
		return null;
	}
	
	public User checkAccountExist(String username) {
		Connection conn;	
		PreparedStatement ps = null;
        ResultSet rs = null;
		String query = "SELECT * FROM product.users where username = ?";
		try {
			conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(query);
            ps.setString(1, username); 
            rs = ps.executeQuery();
            while(rs.next()) {
            	return new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5));
            }
            rs = ps.executeQuery();
		}catch (Exception e) {
			
		}
		return null;
	}
	
	public void signup(String username,String password) {
		Connection conn;	
		PreparedStatement ps = null;
		String query = "INSERT INTO product.users (username, password) VALUES (?,?)";
		
		try {
			conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2, password);
            ps.executeUpdate();
		}catch(Exception e){
			
		}
	}
	
	public List<Product> searchByName(String txtSearch){
		List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM product.sanpham where name LIKE ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn;	
        try {
        	conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
            	 
                 list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getDouble(6),rs.getString(7),rs.getInt(8)));
            }
        } catch (SQLException e) {
            
        }

        return list;
    }
	
	 public Product getProductByID(String id) {
		 PreparedStatement ps = null;
	        ResultSet rs = null;
	        Connection conn;	
	        
	        String query = "SELECT * FROM product.sanpham where id = ?";
	        try {
	        	conn = new KetNoiCSDL().getKetNoiCSDL();
	            ps = conn.prepareStatement(query);
	            ps.setString(1,id);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getDouble(6),rs.getString(7),rs.getInt(8));
	            }
	        } catch (Exception e) {
	        }
	      return null;
	    }
	
	public List<Product> getProductBySellID(int id){
		List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM product.sanpham where sell_ID = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn;	
        try {
        	conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
            	 
                 list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getDouble(6),rs.getString(7),rs.getInt(8)));
            }
        } catch (SQLException e) {
            
        }

        return list;
    }
	
	public void deleteProduct(String pid) {
		PreparedStatement ps = null;
        
        Connection conn;
		String query ="delete FROM product.sanpham where id = ?";
		try {
        	conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
	}
	
	public void insertProduct(String name,String image,String price,String color,String material,String desciption,int sid) {
		PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn;
		String query = "INSERT INTO product.sanpham (name, image,price,color,material,description,sell_ID) VALUES (?,?,?,?,?,?,?) ";
		try {
        	conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,image);
            ps.setString(3,price);
            ps.setString(4,color);
            ps.setString(5,material);
            ps.setString(6,desciption);
            ps.setInt(7,sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
	}
	
	public void editProduct(String name,String image,String price,String color,String material,String desciption,String pid) {
		PreparedStatement ps = null;
        ResultSet rs = null;
        Connection conn;
		String query = "UPDATE product.sanpham\r\n"
				+ "SET name = ?, image = ?, price = ?, color = ?, material = ?, description = ?\r\n"
				+ "WHERE id = ?; ";
		try {
        	conn = new KetNoiCSDL().getKetNoiCSDL();
            ps = conn.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,image);
            ps.setString(3,price);
            ps.setString(4,color);
            ps.setString(5,material);
            ps.setString(6,desciption);
            ps.setString(7,pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
	}
	
	
		}
