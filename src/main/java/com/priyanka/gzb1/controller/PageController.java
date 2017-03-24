package com.priyanka.gzb1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/about_us")
	public String aboutUs() {
		return "about_us";
	}

	@RequestMapping("/contact_us")
	public String contactUs() {
		return "contact_us";
	}

	@RequestMapping("/login")
	public String signIn() {
		return "login";
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/landing_page")
	public String home() {
		return "landing_page";
	}
	
	@RequestMapping("/prod")
	public String addToCart() {
		return "prod";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	 @RequestMapping("/reg_submit")
	public String rSubmit() {
		return "reg_submit";
	}
	 
	 @RequestMapping("/login_submit")
		public String logSubmit() {
			return "login_submit";
		}
	
	@RequestMapping("/men_products")
	public String mProducts() {
		return "men_products";
	}
	
	@RequestMapping("/women_products")
	public String wProducts() {
		return "women_products";
	}
	
	@RequestMapping("/ws_desc1")
	public String wProdDesc1() {
		return "ws_desc1";
	}
	
	@RequestMapping("/ws_desc2")
	public String wProdDesc2() {
		return "ws_desc2";
	}
	
	@RequestMapping("/ws_desc3")
	public String wProdDesc3() {
		return "ws_desc3";
	}
	
	@RequestMapping("/ws_desc4")
	public String wProdDesc4() {
		return "ws_desc4";
	}
	
	@RequestMapping("/ws_desc5")
	public String wProdDesc5() {
		return "ws_desc5";
	}
	
	@RequestMapping("/ws_desc6")
	public String wProdDesc6() {
		return "ws_desc6";
	}
	
	@RequestMapping("/ws_desc7")
	public String wProdDesc7() {
		return "ws_desc7";
	}
	
	@RequestMapping("/ws_desc8")
	public String wProdDesc8() {
		return "ws_desc8";
	}
	
	@RequestMapping("/ws_desc9")
	public String wProdDesc9() {
		return "ws_desc9";
	}
	
	@RequestMapping("/ws_desc10")
	public String wProdDesc10() {
		return "ws_desc10";
	}
	
	@RequestMapping("/ms_desc1")
	public String mProdDesc1() {
		return "ms_desc1";
	}
	
	@RequestMapping("/ms_desc2")
	public String mProdDesc2() {
		return "ms_desc2";
	}
	
	@RequestMapping("/ms_desc3")
	public String mProdDesc3() {
		return "ms_desc3";
	}
	
	@RequestMapping("/ms_desc4")
	public String mProdDesc4() {
		return "ms_desc4";
	}
	
	@RequestMapping("/ms_desc5")
	public String mProdDesc5() {
		return "ms_desc5";
	}
	
	@RequestMapping("/ms_desc6")
	public String mProdDesc6() {
		return "ms_desc6";
	}
	
	@RequestMapping("/ms_desc7")
	public String mProdDesc7() {
		return "ms_desc7";
	}
	
	@RequestMapping("/ms_desc8")
	public String mProdDesc8() {
		return "ms_desc8";
	}
	
	@RequestMapping("/ms_desc9")
	public String mProdDesc9() {
		return "ms_desc9";
	}
	
	@RequestMapping("/ms_desc10")
	public String mProdDesc10() {
		return "ms_desc10";
	}
	
	@RequestMapping("/ms_desc11")
	public String mProdDesc11() {
		return "ms_desc11";
	}
	
	@RequestMapping("/ms_desc12")
	public String mProdDesc12() {
		return "ms_desc12";
	}
	
}

