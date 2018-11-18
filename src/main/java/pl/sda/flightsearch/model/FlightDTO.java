package pl.sda.flightsearch.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;
@Getter
@Setter
@AllArgsConstructor
public class FlightDTO {

    private String flyTo;

    private String airlines;

    private String flyDuration;

    private String flyFrom;

    private Date dTimeUTC;

    private String bookingToken;

    private String cityTo;

    private String cityFrom;

    private Date aTimeUTC;

    private BigDecimal price;

    private int baglimit;
}
