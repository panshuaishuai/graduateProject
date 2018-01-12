package online.qingshixun.module.dao;

import java.util.List;

import online.qingshixun.core.MyBatisRepository;
import online.qingshixun.dto.StudentDTO;

@MyBatisRepository
public interface StudentDaoMyBatis {

	/**
	 * 获取所有学生信息列表
	 * @return
	 */
	List<StudentDTO> getStudents();
	
	/**
	 * 获取Java开发的学生信息列表
	 * @return
	 */
	List<StudentDTO> getJavaStudents();
	
	/**
	 * 获取大数据学生信息列表
	 * @return
	 */
	List<StudentDTO> getBigDataStudents();
	
	/**
	 * 获取软件测试学生信息列表
	 * @return
	 */
	List<StudentDTO> getTestStudents();
	
	/**
	 * 获取Web前端学生信息列表
	 * @return
	 */
	List<StudentDTO> getWebStudents();
	
	/**
	 * 获取男性学生信息列表
	 * @return
	 */
	List<StudentDTO> getMaleStudents();
	
	/**
	 * 获取女性学生信息列表
	 * @return
	 */
	List<StudentDTO> getFemaleStudents();
	
	/**
	 * 新增学生
	 * @param student
	 */
	void saveStudent(StudentDTO student);
}
