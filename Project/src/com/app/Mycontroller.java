package com.app;
import javax.servlet.http.HttpServletRequest;



import java.util.List;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.sql.DataSource;
@Controller
public class Mycontroller {
	
	private static final String SQL = null;

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	
	@RequestMapping("/")
	public String userlogin()
	{
		return "first";
	}
	
	Register register=new Register();
	@RequestMapping("/login")
	public String userLogin(HttpServletRequest request){
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		int count=jdbcTemplate.queryForInt("select count(*)from  register where userid=? and password=?",new String[]{userid,password});
		if(count>0)
		{
			return "main";
		}
		else
		{
			return "err";
		}
		
	}
	@RequestMapping("/lpage")
	public String lpage(){
		
		return "login";
	}	
	
	@RequestMapping("/fpage")
	public String fpage(){
		
		return "first";
	}	
	
	@RequestMapping("/regPage")
	public String regPage(){
		
		return "registeration";
	}	
	
	
	@RequestMapping("/registration")
	public String userreg(HttpServletRequest request)
	{    
		String userid= request.getParameter("userid");
		String username=request.getParameter("username");
		String mobileno=request.getParameter("mobileno");
		String password=request.getParameter("password");
		String confirm=request.getParameter("confirm");
	    
		
		register.setUserid(userid);
		register.setUsername(username);
		register.setMobileno(mobileno);
		register.setPassword(password);
		register.setConfirm(confirm);
		hibernateTemplate.persist(register);
		return "index";
		
	}
	
	@RequestMapping("/allusers")
	
		public ModelAndView getAllEmployees(){
		
		 List<Register> all=hibernateTemplate.find("from Register");
		 
		 System.out.print(all);
		 
		 ModelAndView r=new ModelAndView();
		 r.setViewName("List");
		 r.addObject("list",all);
		 return r;
		}
	@RequestMapping("del")
	public String del(){
		return "delete";
	}
		
	@RequestMapping("/delete")
	public String delete(HttpServletRequest req)
	{
		String userid=req.getParameter("userid");
		Register r=new Register();
		r.setUserid(userid);
		hibernateTemplate.delete(r);
		return "delete";
		
	}
	/* @RequestMapping("/allusers")
	public String allusers(){
		
		return "List";
	}	*/	
		
	@RequestMapping("/edit")
	public String edit()
	{
		
		return "edit";
	}
		
	@RequestMapping("/editUser")
	public String editRegister(HttpServletRequest request)
	{
		String userid= request.getParameter("userid");
		String username=request.getParameter("username");
		String mobileno=request.getParameter("mobileno");
		String password=request.getParameter("password");
		String confirm=request.getParameter("confirm");
	    
		
		register.setUserid(userid);
		register.setUsername(username);
		register.setMobileno(mobileno);
		register.setPassword(password);
		register.setConfirm(confirm);
		hibernateTemplate.update(register);
		return "edit";
		
	}
	
	
	
	

}
