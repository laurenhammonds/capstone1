package com.teksystems.capstone1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.teksystems.capstone1.database.dao.ProductDAO;
import com.teksystems.capstone1.database.entity.Product;
import com.teksystems.capstone1.security.AuthenticatedUserService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO productDao;
	
	@RequestMapping(value = { "/products.html", "/products"}, method = RequestMethod.GET)
	public ModelAndView products() {
		ModelAndView response = new ModelAndView();
		response.setViewName("products");
		
		List<Product> products = productDao.findAll();
		response.addObject("products",products);
		
		return response;
	}
}
