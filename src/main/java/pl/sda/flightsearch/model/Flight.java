package pl.sda.flightsearch.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Getter
@Setter
public class Flight {
    private String flyTo;

    @JsonProperty("deep_link")
    private String deepLink;

    @JsonProperty("airlines")
    private List<String> airlines;

    @JsonProperty("fly_duration")
    private String flyDuration;

    private String flyFrom;

    @JsonProperty("dTimeUTC")
    private Long dTimeUTC;

    @JsonProperty("booking_token")
    private String bookingToken;

    private String cityTo;

    private String cityFrom;

    @JsonProperty("aTimeUTC")
    private Long aTimeUTC;

    private BigDecimal price;
    private String direct_flights;

}
