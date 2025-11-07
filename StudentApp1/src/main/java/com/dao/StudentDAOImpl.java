package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.model.Student;
import com.util.DBUtility;

public class StudentDAOImpl implements StudentDAO{
	
	// try with resource
	public int saveStudent(Student student) {
		int noOfRows = 0;
		String sql = "INSERT INTO STUDENT VALUES (?,?,?)";
		try (Connection con = DBUtility.getInstance().getDBConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setInt(1, student.getId());
			ps.setString(2, student.getName());
			ps.setFloat(3, student.getMarks());
			noOfRows = ps.executeUpdate();
		} catch (Exception e) {
			System.err.println("Add Student " + e.getMessage());
		}
		return noOfRows;
	}
	
}
