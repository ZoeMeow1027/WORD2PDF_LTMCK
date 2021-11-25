package model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.bean.PDF2XLS;

public class Data {
    public List<PDF2XLS> getStatusFromUser(String user) {
        try {
            List<PDF2XLS> list = new ArrayList<PDF2XLS>();
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                model.dao.ConnectInfo.url,
                model.dao.ConnectInfo.dbuser,
                model.dao.ConnectInfo.dbpass
            );    
            Statement stmt = con.createStatement();
            String query = "SELECT * FROM PDF2XLS WHERE User = '" + user + "'";
            ResultSet rs = stmt.executeQuery(query);         

            while (rs.next()) {
                PDF2XLS item = new PDF2XLS();
                item.setID(rs.getInt("ID"));
                item.setUser(rs.getString("User"));
                item.setSourceName(rs.getString("SourceName"));
                item.setSourcePath(rs.getString("SourcePath"));
                item.setTargetPath(rs.getString("TargetPath"));
                item.setResult(rs.getInt("Result"));

                list.add(item);
            }

            return list;
        }
        catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    public void addStatus(PDF2XLS pdf) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                model.dao.ConnectInfo.url,
                model.dao.ConnectInfo.dbuser,
                model.dao.ConnectInfo.dbpass
            );
            // https://stackoverflow.com/a/10167435    
            String query = "INSERT INTO pdf2xls (User, SourceName, SourcePath, TargetPath, Result) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, pdf.getUser());
            ps.setString(2, pdf.getSourceName());
            ps.setString(3, pdf.getSourcePath());
            ps.setString(4, pdf.getTargetPath());
            ps.setInt(5, pdf.getResult());

            ps.execute();
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
    }

    public PDF2XLS getStatusByID(Integer ID) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                model.dao.ConnectInfo.url,
                model.dao.ConnectInfo.dbuser,
                model.dao.ConnectInfo.dbpass
            );
            String query = "SELECT * FROM PDF2XLS WHERE ID = " + ID.toString();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            PDF2XLS pdf = new PDF2XLS();
            while (rs.next()) {

                pdf.setID(rs.getInt("ID"));
                pdf.setUser(rs.getString("User"));
                pdf.setSourceName(rs.getString("SourceName"));
                pdf.setSourcePath(rs.getString("SourcePath"));
                pdf.setTargetPath(rs.getString("TargetPath"));
                pdf.setResult(rs.getInt("Result"));
                
                break;
            }
            rs.close();

            return pdf;
        }
        catch (Exception ex) {
            System.out.println(ex);
            return null;
        }
    }

    public void setStatusResult(Integer ID, Integer result) {
        try {
            // If result code is not from below code, return
            List<Integer> acceptable = new ArrayList<Integer>();
            acceptable.add(-1); // Error
            acceptable.add(0); // Pending
            acceptable.add(1); // Converting
            acceptable.add(2); // Successful
            if (!acceptable.contains(result))
                return;

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                model.dao.ConnectInfo.url,
                model.dao.ConnectInfo.dbuser,
                model.dao.ConnectInfo.dbpass
            );
            String query = "UPDATE pdf2xls SET Result = " + result.toString() + " WHERE ID = " + ID.toString();
            PreparedStatement ps = con.prepareStatement(query);
            ps.execute();
        }
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
