package org.o7planning.sbjdbc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {
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
