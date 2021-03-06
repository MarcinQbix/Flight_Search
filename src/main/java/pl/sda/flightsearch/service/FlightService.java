package pl.sda.flightsearch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.flightsearch.connector.KiwiDataConnector;
import pl.sda.flightsearch.model.Flight;
import pl.sda.flightsearch.model.FlightDTO;
import pl.sda.flightsearch.repository.UserRepository;

import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.TimeZone;
import java.util.stream.Collectors;

@Service
public class FlightService implements IFlightService {
    private KiwiDataConnector kiwiDataConnector;


    @Autowired
    public FlightService(KiwiDataConnector kiwiDataConnector) {
        this.kiwiDataConnector = kiwiDataConnector;

    }


    private LocalDateTime paraser(Long timestamp) {
        return LocalDateTime.ofInstant(Instant.ofEpochSecond(timestamp),
                TimeZone.getDefault().toZoneId());
    }

    @Override
    public List<FlightDTO> showAllFlights(String flyFrom, String flyTo, LocalDate dateFrom, LocalDate dateTo, String direct_flights,Integer passengers) {
        List<Flight> flights = kiwiDataConnector.connect(flyFrom, flyTo, dateFrom, dateTo,direct_flights,passengers).getFlights();

        return flights.stream()
                .map(b -> new FlightDTO(b.getFlyTo(), b.getDeepLink(), b.getAirlines(), b.getFlyDuration(), b.getFlyFrom(), paraser(b.getDTimeUTC()), b.getBookingToken(), b.getCityTo(), b.getCityFrom(), paraser(b.getATimeUTC()), b.getPrice(),b.getDirect_flights(),b.getPassengers())).collect(Collectors.toList());
    }
}
