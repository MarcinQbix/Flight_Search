package pl.sda.flightsearch.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
public class FlightDTO {

    private String flyTo;

    private List<String> airlines;

    private String flyDuration;

    private String flyFrom;

    private LocalDate dTimeUTC;

    private String bookingToken;

    private String cityTo;

    private String cityFrom;

    private LocalDate aTimeUTC;

    private BigDecimal price;

}
