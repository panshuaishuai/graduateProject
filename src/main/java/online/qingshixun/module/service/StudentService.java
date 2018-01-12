package online.qingshixun.module.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import online.qingshixun.dto.StudentDTO;
import online.qingshixun.module.dao.StudentDaoMyBatis;

@Service
public class StudentService {

	@Autowired
	private StudentDaoMyBatis studentDaoMyBatis;
	
	/**
	 * 获取所有学生列表
	 * @return
	 */
	public List<StudentDTO> getStudents() {
		return studentDaoMyBatis.getStudents();
	}
	
	/**
	 * 获取Java开发的学生信息列表
	 * @return
	 */
	public List<StudentDTO> getJavaStudents() {
		return studentDaoMyBatis.getJavaStudents();
	}
	
	/**
	 * 获取大数据学生信息列表
	 * @return
	 */
	public List<StudentDTO> getBigDataStudents() {
		return studentDaoMyBatis.getBigDataStudents();
	}
	
	/**
	 * 获取软件测试学生信息列表
	 * @return
	 */
	public List<StudentDTO> getTestStudents() {
		return studentDaoMyBatis.getTestStudents();
	}
	
	/**
	 * 获取Web前端学生信息列表
	 * @return
	 */
	public List<StudentDTO> getWebStudents() {
		return studentDaoMyBatis.getWebStudents();
	}
	
	/**
	 * 获取男性学生信息列表
	 * @return
	 */
	public List<StudentDTO> getMaleStudents() {
		return studentDaoMyBatis.getMaleStudents();
	}
	
	/**
	 * 获取女性学生信息列表
	 * @return
	 */
	public List<StudentDTO> getFemaleStudents() {
		return studentDaoMyBatis.getFemaleStudents();
	}
	
	/**
	 * 新增学生
	 * @param student
	 */
	public void saveStudent(StudentDTO student) {
		studentDaoMyBatis.saveStudent(student);
	}
	
}
