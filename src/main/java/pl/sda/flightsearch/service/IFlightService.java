package pl.sda.flightsearch.service;

import pl.sda.flightsearch.model.Flight;
import pl.sda.flightsearch.model.FlightDTO;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

public interface IFlightService {
    List<FlightDTO> showAllFlights(String flyFrom, String flyTo, LocalDate dateFrom, LocalDate dateTo);

}