package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Dept;

public class DeptDAO {
	// VO 사용
	public ArrayList<Dept> selectDeptList() throws Exception {
		ArrayList<Dept> list = new ArrayList<>();// Dept[] 
		
		Connection conn = DBHelper.getConnection();
		String sql = "SELECT"
				+ " deptno deptNo, dname, loc"
				+ " FROM dept";
		PreparedStatement stmt = conn.prepareStatement("");
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			Dept d = new Dept();
			d.deptNo = rs.getInt("deptNo");
			d.dname = rs.getString("dname");
			d.loc = rs.getString("loc");
			list.add(d);
			
			
		}
		
			
		return list;
	}

}
