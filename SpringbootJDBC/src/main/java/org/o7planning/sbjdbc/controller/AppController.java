package org.o7planning.sbjdbc.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.o7planning.sbjdbc.dao.BookDao;
import org.o7planning.sbjdbc.model.SinhVien;
import org.o7planning.sbjdbc.model.author;
import org.o7planning.sbjdbc.model.books;
import org.o7planning.sbjdbc.services.AuthorServices;
import org.o7planning.sbjdbc.services.SachServiceImpl;
import org.o7planning.sbjdbc.services.SachServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class AppController {
	
	@Autowired
    private SachServices sachsv;
	@Autowired
    private BookDao sachDao;
	@Autowired
    private AuthorServices authorsv;
	
	
	
	@RequestMapping("/about.html")
	public String ThongTin() {
		return "about";
	}
	@RequestMapping("/muonsach.html")
	public String MuonSach() {
		return "muonsach";
	}
	
	
	
	@RequestMapping("/contact.html")
	public String LienLac() {
		return "contact";
	}
	@RequestMapping("/login.html")
	public String DangKy() {
		return "login";
	}
	
	@RequestMapping(value="/chitiet/{someId}", method = RequestMethod.GET)
	public String showChiTiet(@PathVariable Integer someId,Model model) {
		Optional<books> userEdit = sachsv.findBookById(someId);  
	    userEdit.ifPresent(user -> model.addAttribute("sachs", user));  
	   
		return "chitiet";
	}
	
	
	@RequestMapping("/job-listings.html")//Trả về trang phan trang để load sách
	public String Index() {
		return "redirect:book/";
	}
	
	@RequestMapping("/book")
	public String index(Model model,HttpServletRequest request
			,RedirectAttributes redirect) {
		request.getSession().setAttribute("booklist", null);
		
		if(model.asMap().get("success") != null)
			redirect.addFlashAttribute("success",model.asMap().get("success").toString());
		return "redirect:/book/page/1";
	}
	@GetMapping("/book/page/{pageNumber}")
	public String showEmployeePage(HttpServletRequest request, 
			@PathVariable int pageNumber, Model model) {
		PagedListHolder<?> pages = (PagedListHolder<?>) request.getSession().getAttribute("booklist");
		int pagesize = 10;
		
		List<books> list =(List<books>) sachDao.getSach();
		System.out.println(list.size());
		if (pages == null) {
			pages = new PagedListHolder<>(list);
			pages.setPageSize(pagesize);
		}else {
			final int goToPage = pageNumber - 1;
			if (goToPage <= pages.getPageCount() && goToPage >= 0) 
				pages.setPage(goToPage);
		 }
			
		
		request.getSession().setAttribute("booklist", pages);
		int current = pages.getPage() + 1;
		int begin = Math.max(1, current - list.size());
		int end = Math.min(begin + 5, pages.getPageCount());
		int totalPageCount = pages.getPageCount();
		String baseUrl = "/book/page/";

		model.addAttribute("beginIndex", begin);
		model.addAttribute("endIndex", end);
		model.addAttribute("currentIndex", current);
		model.addAttribute("totalPageCount", totalPageCount);
		model.addAttribute("baseUrl", baseUrl);
		model.addAttribute("sachs", pages);

		return "job-listings";
	}
	


}
