package online.qingshixun.module.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import online.qingshixun.dto.StudentDTO;
import online.qingshixun.module.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentManageController {
	
	@Autowired
	private StudentService studentService;
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("/index")
	public String index() {
		return "/index";
	}
	
	/**
	 * 所有学生列表
	 * @return
	 */
	@RequestMapping("/list")
	public String allStudents(Model model) {
		model.addAttribute("allStudents", studentService.getStudents());
		return "/manage/list";
	}
	
	/**
	 * Java开发学生列表
	 * @return
	 */
	@RequestMapping("/javaList")
	public String javaStudents(Model model) {
		model.addAttribute("allStudents", studentService.getJavaStudents());
		return "/manage/list";
	}
	
	/**
	 * 大数据学生列表
	 * @return
	 */
	@RequestMapping("/dataList")
	public String dataStudents(Model model) {
		model.addAttribute("allStudents", studentService.getBigDataStudents());
		return "/manage/list";
	}
	
	/**
	 * 软件测试学生列表
	 * @return
	 */
	@RequestMapping("/testList")
	public String testStudents(Model model) {
		model.addAttribute("allStudents", studentService.getTestStudents());
		return "/manage/list";
	}
	
	/**
	 * Web前端学生列表
	 * @return
	 */
	@RequestMapping("/webList")
	public String webStudents(Model model) {
		model.addAttribute("allStudents", studentService.getWebStudents());
		return "/manage/list";
	}
	
	/**
	 * 男性学生列表
	 * @return
	 */
	@RequestMapping("/maleList")
	public String maleStudents(Model model) {
		model.addAttribute("allStudents", studentService.getMaleStudents());
		return "/manage/list";
	}
	
	/**
	 * 女性学生列表
	 * @return
	 */
	@RequestMapping("/femaleList")
	public String femaleStudents(Model model) {
		model.addAttribute("allStudents", studentService.getFemaleStudents());
		return "/manage/list";
	}
	
	/**
	 * 新增学生信息
	 * @return
	 */
	@RequestMapping("/add")
	public String add() {
		return "/content/add";
	}
	
	/**
	 * 保存学生信息
	 * @return
	 */
	@RequestMapping("/save")
	public String save(@ModelAttribute StudentDTO student) {
		studentService.saveStudent(student);
		return "/manage/list";
	}
}
