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
public class HotelController {

	private static final Logger logger = LoggerFactory.getLogger(HotelController.class);

	@RequestMapping(value = "/hotel-booking.do", method = RequestMethod.GET)
	public String hotelBooking(Locale locale, Model model) {
		logger.info("booking! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "hotel/hotel-booking";
	}

	@RequestMapping(value = "/hotel-list.do", method = RequestMethod.GET)
	public String hotelList(Locale locale, Model model) {
		logger.info("list! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "hotel/hotel-list";
	}

	@RequestMapping(value = "/hotel-payment-complete.do", method = RequestMethod.GET)
	public String hotelPaymentComplete(Locale locale, Model model) {
		logger.info("payment-complete! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "hotel/hotel-payment-complete";
	}

	@RequestMapping(value = "/hotel-payment-received.do", method = RequestMethod.GET)
	public String hotelPaymentReceived(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "hotel/hotel-payment-received";
	}

	@RequestMapping(value = "/hotel-search-result.do", method = RequestMethod.GET)
	public String hotelSearchResult(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "hotel/hotel-search-result";
	}

	@RequestMapping(value = "/room-details.do", method = RequestMethod.GET)
	public String hotelRoom(Locale locale, Model model) {
		logger.info("about! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "hotel/room-details";
	}

}
