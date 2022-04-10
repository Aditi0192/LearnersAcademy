package com.learnersAcademy.database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learnersAcademy.bean.GetDataBean;

public class GetDataDao {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/academy?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "sqlroot";
    
    private static final String getReport = "select c.class_id, c.class_name, s.student_id, s.student_name, t.teacher_name, sb.subject_name \r\n"
    		+ "from students s join class c on s.class_id = c.class_id\r\n"
    		+ "join class_subjects cs on c.class_id = cs.class_id\r\n"
    		+ "join teachers t on cs.teacher_id = t.teacher_id\r\n"
    		+ "join subjects sb on cs.subject_id = sb.subject_id;";
    
    public GetDataDao() {}
    
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    
    public List < GetDataBean > getFinalReport(){
    	
    	List <GetDataBean> data = new ArrayList< >();
    	
    	 try (Connection connection = getConnection();

    	          
    	            PreparedStatement preparedStatement = connection.prepareStatement(getReport);) {
    	            System.out.println(preparedStatement);
    	            // Step 3: Execute the query or update query
    	            ResultSet rs = preparedStatement.executeQuery();
    	
    	            while (rs.next()) {
    	                int classId = rs.getInt("class_id");
    	                String className = rs.getString("class_name");
    	                int rollNumber = rs.getInt("student_id");
    	                String studentName = rs.getString("student_name");
    	                String teacherName = rs.getString("teacher_name");
    	                String subject = rs.getString("subject_name");
    	                data.add(new GetDataBean(classId,className,rollNumber,studentName,teacherName,subject));
    	            }
    	        } catch (SQLException e) {
    	            printSQLException(e);
    	        }
    	
    	
    	
    	
    	return data;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
