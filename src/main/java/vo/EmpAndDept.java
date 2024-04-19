package vo;
//이런 타입은 만들지 않을것.. 이런것도 있다 정도만 알아두자 
public class EmpAndDept {
	private Emp emp;
	private Dept dept;
	private Emp getEmp() {
		return emp;
	}
	public void setEmp(Emp emp) {
		this.emp = emp;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	

}
