package sap.scanner.webController;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MenuController {

	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	@RequestMapping(value = "/about.do", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/about";
	}	
	
	@RequestMapping(value = "/faq.do", method = RequestMethod.GET)
	public String faq(Locale locale, Model model) {
		logger.info("faq! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/faq";
	}	
	
	@RequestMapping(value = "/services.do", method = RequestMethod.GET)
	public String services(Locale locale, Model model) {
		logger.info("faq! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/services";
	}
	
	@RequestMapping(value = "/admin-dashboard.do", method = RequestMethod.GET)
	public String adminDashboard(Locale locale, Model model) {
		logger.info("admin-dashboard! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/admin-dashboard";
	}
	
	@RequestMapping(value = "/user-dashboard.do", method = RequestMethod.GET)
	public String userDashboard(Locale locale, Model model) {
		logger.info("user-dashboard! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/user-dashboard";
	}
	
	@RequestMapping(value = "/recover.do", method = RequestMethod.GET)
	public String recover(Locale locale, Model model) {
		logger.info("recover! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/recover";
	}
	
	@RequestMapping(value = "/loading.do", method = RequestMethod.GET)
	public String loading(Locale locale, Model model) {
		logger.info("loading! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "menu/loading";
	}
	
}
