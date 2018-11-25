package pl.sda.flightsearch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.sda.flightsearch.model.SearchParams;
import pl.sda.flightsearch.service.FlightService;

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
            @RequestParam SearchParams searchParams,
            Model model
    ) {
        model.addAttribute("flights", flightService.showAllFlights(searchParams.getFlyFrom(), searchParams.getFlyFrom(), searchParams.getDateFrom(), searchParams.getDateTo()));
        return "result";
    }

}
