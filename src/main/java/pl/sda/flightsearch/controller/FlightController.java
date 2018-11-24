package pl.sda.flightsearch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.sda.flightsearch.model.Flight;
import pl.sda.flightsearch.service.FlightService;

import java.time.LocalDate;

@Controller
public class FlightController {
    FlightService flightService;
@Autowired
    public FlightController(FlightService flightService) {
        this.flightService = flightService;
    }


//@RequestMapping("/")
//public String listFlightView(
//        @RequestParam String flyFrom,
//        @RequestParam String flyTo,
//        @RequestParam LocalDate dateFrom,
//        @RequestParam LocalDate dateTo,
//Model model
//        ){
//    model.addAttribute("flights",flightService.showAllFlights(flyFrom,flyTo,dateFrom,dateTo));
//    return "flight";
//}

}
