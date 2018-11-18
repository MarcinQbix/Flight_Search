package pl.sda.flightsearch.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.math.BigDecimal;
import java.util.Date;

public class Flight {
    private String flyTo;

    private String airlines;

    @JsonProperty("fly_duration")
    private String flyDuration;

    private String flyFrom;

    @JsonProperty("dTimeUTC")
    private Date dTimeUTC;

    @JsonProperty("booking_token")
    private String bookingToken;

    private String cityTo;

    private String cityFrom;

    @JsonProperty("aTimeUTC")
    private Date aTimeUTC;

    private BigDecimal price;



}
