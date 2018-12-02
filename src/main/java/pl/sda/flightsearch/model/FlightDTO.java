package pl.sda.flightsearch.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
public class FlightDTO {

    private String flyTo;

    private String deepLink;

    private List<String> airlines;

    private String flyDuration;

    private String flyFrom;

    private LocalDateTime dTimeUTC;

    private String bookingToken;

    private String cityTo;

    private String cityFrom;

    private LocalDateTime aTimeUTC;

    private BigDecimal price;

    private String direct_flights;
    private Integer passengers;

}
