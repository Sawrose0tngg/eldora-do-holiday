package org.eldoradoholidays.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.eldoradoholidays.dao.ResortDAO;
import org.eldoradoholidays.dao.UserDAO;
import org.eldoradoholidays.dto.LoginUser;
import org.eldoradoholidays.dto.Resort;
import org.eldoradoholidays.dto.ResortBook;
import org.eldoradoholidays.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@Autowired
	public UserDAO userDao;
	@Autowired
	public ResortDAO resortDao;
	@Autowired
	private HttpSession session;

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView homePage(@ModelAttribute("loginUser") LoginUser user, BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		model.addAttribute("loginUser", new LoginUser());
		mv.addObject("resortList", resortDao.getAllResorts());

		try {
			if (session.getAttribute("emailID").toString() != null) {
				User userWinter = userDao.getUserByEmail(session.getAttribute("emailID").toString());
				mv.addObject("winterState", userDao.getWinterPackage(userWinter));
			}
		} catch (Exception e) {

		}
		return mv;
	}

	@RequestMapping("/about")
	public ModelAndView aboutPage(@ModelAttribute("loginUser") LoginUser user, BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping("/contact")
	public ModelAndView servicePage(@ModelAttribute("loginUser") LoginUser user, BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact");
		mv.addObject("userClickContact", true);
		return mv;
	}

	@RequestMapping("/resort/{id}")
	public ModelAndView resortPageDetails(@PathVariable int id, @ModelAttribute("loginUser") LoginUser user,
			BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Resort");
		mv.addObject("userClickResort", true);
		mv.addObject("singleresort", resortDao.getSingleResort(id));
		try {
			if (session.getAttribute("emailID").toString() != null) {
				User userWinter = userDao.getUserByEmail(session.getAttribute("emailID").toString());
				mv.addObject("winterState", userDao.getWinterPackage(userWinter));
			}
		} catch (Exception e) {

		}
		return mv;
	}

	@RequestMapping("/resort/{id}/book")
	public ModelAndView resortBook(@PathVariable int id, @ModelAttribute("loginUser") LoginUser user,
			BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);

		if (result.hasErrors()) {
			mv.addObject("resortList", resortDao.getAllResorts());
			return mv;
		}

		Resort resort = resortDao.getSingleResort(id);
		resort.setAvailability(resort.getAvailability() - 1);
		resortDao.updateRoom(resort);

		ResortBook resortBook = new ResortBook();
		resortBook.setResortId(id);
		resortBook.setUserId(userDao.getUserByEmail(session.getAttribute("emailID").toString()).getId());
		resortBook.setRoom(1);
		System.out.println("USER: " + userDao.getUserByEmail(session.getAttribute("emailID").toString()).getId());
		resortDao.bookResort(resortBook);

		mv.addObject("resortList", resortDao.getAllResorts());
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerPage(@ModelAttribute("loginUser") LoginUser user, BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("register");
		User newuser = new User();
		newuser.setWinter(false);
		model.addAttribute("user", newuser);
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView addUser(@Valid @ModelAttribute("user") User user, BindingResult results,
			@ModelAttribute("loginUser") LoginUser loginuser, BindingResult loginresult, Model model) {
		ModelAndView mv = new ModelAndView("register");

		if (results.hasErrors()) {
			mv.addObject("message", "Register Failed");
			mv.addObject("errorTrue", true);
			return mv;
		}
		boolean status;
		try {
			status = userDao.addUser(user);
		} catch (Exception e) {
			status = false;
		}
		if (status == true) {
			mv.addObject("message", "Successfully Added User");
			model.addAttribute("user", new User());
		} else
			mv.addObject("message", "Register Failed");
		return mv;
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(@ModelAttribute("loginUser") LoginUser user, BindingResult result, Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);

		boolean status = userDao.getUser(user.getEmail(), user.getPassword());

		if (!status) {
			mv.addObject("loginFail", true);
			mv.addObject("loginstatus", false);
		} else {
			session.setAttribute("emailID", user.getEmail());
		}
		mv.addObject("resortList", resortDao.getAllResorts());
		return mv;
	}

	@RequestMapping("/winter_subscribe")
	public ModelAndView winterSubscribe(@ModelAttribute("loginUser") LoginUser user, BindingResult result,
			Model model) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		mv.addObject("resortList", resortDao.getAllResorts());

		User changeUser = userDao.getUserByEmail(session.getAttribute("emailID").toString());
		changeUser.setWinter(true);
		userDao.updateUser(changeUser);

		try {
			if (session.getAttribute("emailID").toString() != null) {
				User userWinter = userDao.getUserByEmail(session.getAttribute("emailID").toString());
				mv.addObject("winterState", userDao.getWinterPackage(userWinter));
			}
		} catch (Exception e) {

		}

		return mv;
	}

}
