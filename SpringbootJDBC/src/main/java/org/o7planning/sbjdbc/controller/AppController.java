package org.o7planning.sbjdbc.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.o7planning.sbjdbc.dao.AuthorDao;
import org.o7planning.sbjdbc.dao.BookDao;
import org.o7planning.sbjdbc.dao.PublisherDao;
import org.o7planning.sbjdbc.dao.UsersDao;
import org.o7planning.sbjdbc.model.author;
import org.o7planning.sbjdbc.model.books;
import org.o7planning.sbjdbc.model.publisher;
import org.o7planning.sbjdbc.model.users;
import org.o7planning.sbjdbc.services.AuthorServices;
import org.o7planning.sbjdbc.services.PublisherServices;
import org.o7planning.sbjdbc.services.SachServices;
import org.o7planning.sbjdbc.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	@Autowired
    private AuthorDao authorDao;
	@Autowired
    private PublisherServices pubsv;
	
	@Autowired
    private UserService ussv;
	@Autowired
    private PublisherDao pubDao;
	
	
	@RequestMapping(value= {"/", "/index"})
	public String index() {
		return "index";
	}
	@RequestMapping("/about")
	public String ThongTin() {
		return "about";
	}
	@RequestMapping("/muonsach")
	public String MuonSach() {
		return "muonsach";
	}
	

	@RequestMapping("/contact")
	public String LienLac() {
		return "contact";
	}
	@RequestMapping("/login")
	public String DangKy() {
		return "login";
	}
	//Xem chi tiet sach
	@RequestMapping(value="/chitiet/{someId}", method = RequestMethod.GET)
	public String showChiTiet(@PathVariable Integer someId,Model model) {
		Optional<books> userEdit = sachsv.findBookById(someId);  
	    userEdit.ifPresent(user -> model.addAttribute("sachs", user));  
	   
		return "chitiet";
	}
	
	//Load trang tu sach
	@RequestMapping(value= {"/book"})
	public String showBook(Model model,HttpServletRequest request
			,RedirectAttributes redirect) {
		request.getSession().setAttribute("booklist", null);
		
		if(model.asMap().get("success") != null)
			redirect.addFlashAttribute("success",model.asMap().get("success").toString());
		return "redirect:/book/page/1";
	}
	//Phan trang de load sach
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

		return "book_lists";
	}
	//CRUDbook
	@RequestMapping(value = "/edit", method = RequestMethod.GET)  
	  public String editUser(@RequestParam("id") Integer bookId, Model model) {  
	    Optional<books> userEdit = sachsv.findBookById(bookId);  
	    userEdit.ifPresent(user -> model.addAttribute("us", user));  
	    return "EditBook";  
	  }  
	 @RequestMapping(value = "/save", method = RequestMethod.POST)  
	  public String save(@Valid books us, BindingResult result, RedirectAttributes redirect) {  
		 if (result.hasErrors()) {
				return "form";
			}
		 sachsv.saveBook(us);  
	    redirect.addFlashAttribute("success", "Saved book successfully!");
	    return "redirect:/CRUDbook";  
	  }  
	 @RequestMapping( "/CRUDbook")  
	  public String load(Model model) {  
			List<books> list =(List<books>) sachDao.getSach();
			model.addAttribute("books",list);
			return "CRUDbook";
	  }  
	 @GetMapping("/add")
		public String create(Model model) {
		 model.addAttribute("us", new books());
			return "form";
		}
	 @GetMapping("/delete")
		public String delete(@RequestParam("id") Integer bookId, RedirectAttributes redirect) {
		 Optional<books> userEdit = sachsv.findBookById(bookId);  
		    userEdit.ifPresent(user -> sachsv.deleteBook(user.getId()));  
			redirect.addFlashAttribute("success", "Deleted employee successfully!");
			return "redirect:/CRUDbook";
		}
	 // CRUD author
	 @RequestMapping(value = "/editauthor", method = RequestMethod.GET)  
	  public String editAuthor(@RequestParam("id") Integer bookId, Model model) {  
	    Optional<author> userEdit = authorsv.findAuthorById(bookId);  
	    userEdit.ifPresent(user -> model.addAttribute("us", user));  
	    return "editauthor";  
	  }  
	 @RequestMapping(value = "/saveauthor", method = RequestMethod.POST)  
	  public String saveauthor(@Valid author us, BindingResult result, RedirectAttributes redirect) {  
		 if (result.hasErrors()) {
				return "formauthor";
			}
		 authorsv.saveAuthor(us);  
	    redirect.addFlashAttribute("success", "Saved book successfully!");
	    return "redirect:/CRUDauthor";  
	  }  
	 @RequestMapping( "/CRUDauthor")  
	  public String loadauthor(Model model) {  
			List<author> list =(List<author>) authorDao.getAuthor();
			model.addAttribute("authors",list);
			return "CRUDauthor";
	  }  
	 @GetMapping("/addauthor")
		public String createauthor(Model model) {
		 model.addAttribute("us", new author());
			return "formauthor";
		}
	 @GetMapping("/deleteauthor")
		public String deleteauthor(@RequestParam("id") Integer authorId, RedirectAttributes redirect) {
		 Optional<author> userEdit = authorsv.findAuthorById(authorId);  
		    userEdit.ifPresent(user -> authorsv.deleteAuthor(user.getId()));  
			redirect.addFlashAttribute("success", "Deleted employee successfully!");
			return "redirect:/CRUDauthor";
		}
	 //CRUD publisher
	 @RequestMapping(value = "/editpub", method = RequestMethod.GET)  
	  public String editPub(@RequestParam("id") Integer pubId, Model model) {  
	    Optional<publisher> userEdit = pubsv.findPublisherById(pubId);  
	    userEdit.ifPresent(user -> model.addAttribute("us", user));  
	    return "editpublisher";  
	  }  
	 @RequestMapping(value = "/savepub", method = RequestMethod.POST)  
	  public String savepub(@Valid publisher us, BindingResult result, RedirectAttributes redirect) {  
		 if (result.hasErrors()) {
				return "formpublisher";
			}
		 pubsv.savePublisher(us);  
	    redirect.addFlashAttribute("success", "Saved book successfully!");
	    return "redirect:/CRUDpublisher";  
	  }  
	 @RequestMapping( "/CRUDpublisher")  
	  public String loadpublisher(Model model) {  
			List<publisher> list =(List<publisher>) pubDao.getPub();
			model.addAttribute("publishers",list);
			return "CRUDpublisher";
	  }  
	 @GetMapping("/addpub")
		public String createpub(Model model) {
		 model.addAttribute("us", new publisher());
			return "formpublisher";
		}
	 @GetMapping("/deletepub")
		public String deletepub(@RequestParam("id") Integer pubId, RedirectAttributes redirect) {
		 Optional<publisher> userEdit = pubsv.findPublisherById(pubId);  
		    userEdit.ifPresent(user -> pubsv.deletePublisher(user.getId()));  
			redirect.addFlashAttribute("success", "Deleted employee successfully!");
			return "redirect:/CRUDpublisher";
		}
	 //login register user
	 @RequestMapping(value="/saveuser",method = RequestMethod.POST)  
	  public String savepub(@Valid users us, BindingResult result, RedirectAttributes redirect) {  
		 if (result.hasErrors()) {
				return "index";
			}
		
		   
		    	
		 String email=us.getEmail();
		 Optional<users> userEdit = ussv.finduserByemail(email);  
		    if(userEdit.isPresent()==false) {
		    	if(us.checkEmail())
		    	ussv.saveUser(us);
		    	 redirect.addFlashAttribute("success", "Saved user successfully!");
		 	    return "index";  
		    }
		    	redirect.addFlashAttribute("fail", "Please choose another email");
		    	return "redirect:/login.html";
		    
		 
	   
	  }  

}
