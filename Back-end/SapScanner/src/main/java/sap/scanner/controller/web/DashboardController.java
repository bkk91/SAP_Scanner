package sap.scanner.controller.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {

	private static final Logger logger = LoggerFactory.getLogger(DashboardController.class);

	@RequestMapping(value = "/admin-dashboard.do", method = RequestMethod.GET)
	public String adminDashboard(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard";
	}	
	
	@RequestMapping(value = "/admin-dashboard-flying.do", method = RequestMethod.GET)
	public String adminDashboardFlying(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard-flying";
	}	
	
	@RequestMapping(value = "/admin-dashboard-hotel.do", method = RequestMethod.GET)
	public String adminDashboardHotel(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard-hotel";
	}
	
	@RequestMapping(value = "/admin-dashboard-reservation.do", method = RequestMethod.GET)
	public String adminDashboardReservation(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard-reservation";
	}
	
	@RequestMapping(value = "/admin-dashboard-review.do", method = RequestMethod.GET)
	public String adminDashboardReview(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard-review";
	}
	
	@RequestMapping(value = "/admin-dashboard-setting.do", method = RequestMethod.GET)
	public String adminDashboardSetting(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard-setting";
	}
	
	@RequestMapping(value = "/admin-dashboard-user.do", method = RequestMethod.GET)
	public String adminDashboardUser(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/admin-dashboard-user";
	}
	
	@RequestMapping(value = "/user-dashboard.do", method = RequestMethod.GET)
	public String userDashboard(Locale locale, Model model) {
		logger.info("user-dashboard! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "dashboard/user-dashboard";
	}
}
