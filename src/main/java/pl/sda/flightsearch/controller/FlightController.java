package pl.sda.flightsearch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.sda.flightsearch.service.FlightService;

import java.time.LocalDate;

@Controller
public class FlightController {
    private FlightService flightService;

    @Autowired
    public FlightController(FlightService flightService) {
        this.flightService = flightService;

    }

    @GetMapping("/")
    public String showSearcher() {
        return "searcher";
    }

    @PostMapping("/flightList")
    public String listFlightView(
            @RequestParam String flyFrom,
            @RequestParam String flyTo,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateFrom,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateTo,
            Model model
    ) {
        model.addAttribute("flights", flightService.showAllFlights(flyFrom, flyTo, dateFrom, dateTo));
        return "result";
    }

    @GetMapping("/login")
    public String showLogged() {
        return "login";
    }

    @GetMapping("/register")
    public String showRegister() {
        return "register";
    }
}
