package pl.sda.flightsearch.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
@Getter
@Setter
public class Flight {
    private String flyTo;

    private String airlines;

    @JsonProperty("fly_duration")
    private String flyDuration;

    private String flyFrom;

    @JsonProperty("dTimeUTC")
    private LocalDate dTimeUTC;

    @JsonProperty("booking_token")
    private String bookingToken;

    private String cityTo;

    private String cityFrom;

    @JsonProperty("aTimeUTC")
    private LocalDate aTimeUTC;

    private BigDecimal price;

    private int baglimit;

}
