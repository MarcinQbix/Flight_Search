package pl.sda.flightsearch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.flightsearch.connector.KiwiDataConnector;
import pl.sda.flightsearch.model.Flight;
import pl.sda.flightsearch.model.FlightDTO;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class FlightService implements IFlightService{
   private KiwiDataConnector kiwiDataConnector;
@Autowired
    public FlightService(KiwiDataConnector kiwiDataConnector) {
        this.kiwiDataConnector = kiwiDataConnector;
    }


    @Override
    public List<FlightDTO> showAllFlights(String flyFrom, String flyTo, LocalDate dateFrom, LocalDate dateTo) {
        List<Flight> flights = kiwiDataConnector.connect(flyFrom,flyTo,dateFrom,dateTo).getFlights();
        return flights.stream()
                .map(b->new FlightDTO(b.getFlyTo(),b.getAirlines(),b.getFlyDuration(),b.getFlyFrom(),b.getDTimeUTC(),b.getBookingToken(),b.getCityTo(),b.getCityFrom(),b.getATimeUTC(),b.getPrice(),b.getBaglimit())).collect(Collectors.toList());
    }
}
