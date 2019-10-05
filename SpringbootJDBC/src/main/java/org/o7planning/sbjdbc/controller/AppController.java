package org.o7planning.sbjdbc.controller;

import java.util.List;

import org.o7planning.sbjdbc.dao.SinhVienDao;
import org.o7planning.sbjdbc.model.SinhVien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class AppController {
	@Autowired
	private SinhVienDao SinhVienDAO ;
	@RequestMapping(value="/sinhVienPages.html",method = RequestMethod.GET)  
    public String showSinhVien(Model model) {
        List<SinhVien> list =  SinhVienDAO.getSinhVien();
        model.addAttribute("SinhVienInfos", list);
        return "sinhVienPages";
    }
	@RequestMapping("/about.html")
	public String ThongTin() {
		return "about";
	}
	@RequestMapping("/job-listings.html")
	public String PhanTrang() {
		return "job-listings";
	}
	@RequestMapping("/contact.html")
	public String LienLac() {
		return "contact";
	}
	@RequestMapping("/login.html")
	public String DangKy() {
		return "login";
	}
	
	 


}
