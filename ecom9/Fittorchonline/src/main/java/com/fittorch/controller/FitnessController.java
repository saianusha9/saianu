package com.fittorch.controller;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpSession;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fittorch.model.Category;
import com.fittorch.model.Product;
import com.fittorch.model.Supplier;
import com.fittorch.services.CategoryService;
import com.fittorch.services.DataService;
import com.fittorch.services.SupplierService;
import com.google.gson.Gson;


@Controller
public class FitnessController {

	public FitnessController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("inside fitness controller.....");
	}

	
	@Autowired
	DataService dataService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	SupplierService supplierService;
	
private static final String UPLOAD_DIRECTORY ="/repro";  
    
    @RequestMapping("uploadform")  
    public ModelAndView uploadForm(){  
        return new ModelAndView("uploadform");    
    }  
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/form")
	public ModelAndView gotoProduct(ModelMap m)
	{
		
		List<Category> sa=categoryService.getList();
		List<Supplier> sp=supplierService.getList();
		m.addAttribute("lstsup",sp);
		List<Product> productList=dataService.getList();
		
		m.addAttribute("chkMsg", "hello");
		m.addAttribute("productList", productList);
		return new ModelAndView("form","lstpro",sa).addObject("prod",new Product());
	}
	
	@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prod")Product prod)
	{
		MultipartFile file=prod.getFile();
        String filename=file.getOriginalFilename();  
         String src=""; 
        try{  
        byte barr[]=file.getBytes();  
        BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("C:\\Users\\Sivasubbaiah\\workspace\\Fittorchonline\\src\\main\\webapp\\resources\\proup\\"+filename)));  
        bout.write(barr);  
        bout.flush();  
        bout.close();  
        src="/resources/proup/"+filename;
        System.out.println("selected image:"+src);
//        req.setAttribute("ïmages", src);
        
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }  
		dataService.insertRow(prod,src);
		return new ModelAndView("form","repro",src).addObject("command", new Product());
	}
	
//	@RequestMapping(value="/savefile",method=RequestMethod.POST)  
//	public ModelAndView upload(@ModelAttribute("prod")Product prod){  
////	        String path=session.getServletContext().getRealPath("/"); 
//		
//	        return new ModelAndView("form","filename",path+"/"+filename);  
//	    }  
	
	@RequestMapping("/hf")
	public ModelAndView listProduct(ModelMap m)
	{
		
		List<Product> productList=dataService.getList();
		Gson gson=new Gson ();
		String jsoncon=gson.toJson(productList);
		m.addAttribute("conjs",jsoncon);
		System.out.println(jsoncon);
		return new ModelAndView("hf");
	}
	
	
	

	@RequestMapping("index")
	public String gotoHome() {
		return "index";
	}
	
	@RequestMapping("memberDetails")
	public String gotosignup() {
		return "memberDetails";
	}
	
	
	

	@RequestMapping("contact")
	public String gotocontact() {
		return "contact";
	}
	
	
	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "login";
  	}
	@RequestMapping("/edu")
	public ModelAndView gotoProduct(@ModelAttribute ("prod")Product prod,Model m)
	{
		List prodLt=dataService.getList();
		return new ModelAndView("edu","Products",prodLt);
	}
	@RequestMapping("aboutus")
	public String gotoaboutus() {
		return "aboutus";
	}
	
	@RequestMapping("/gridlist")
	public ModelAndView lstProduct(ModelMap m)
	{
		List<Product> productList=dataService.getList();
		m.addAttribute("chkMsg", "hello");
		return new ModelAndView("gridlist","productList", productList);
	}
	
	@RequestMapping("/edit")
	public ModelAndView editProd(@ModelAttribute("prod")Product prod,@RequestParam int id)
	{
		prod=dataService.getRowById(id);
		ModelAndView mv=new ModelAndView("edit","prdList",prod);
		mv.setViewName("edit");
		
		return mv.addObject("command", prod);
	}
	

	
	@RequestMapping(value="updateProduct",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("prod")Product prod)
	{
	//prod=dataService.getRowById(id);
	dataService.updateRow(prod);
	return new ModelAndView("redirect:hf");
		//return new ModelAndView("hf","prod");
	}
	
@RequestMapping("/deleteProduct")
	public ModelAndView deleteProd(@RequestParam int id)
	{
	dataService.deleteRow(id);
		return new ModelAndView("redirect:hf");
	}
	
	
	

}
