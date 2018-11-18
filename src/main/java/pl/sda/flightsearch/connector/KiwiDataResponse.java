package pl.sda.flightsearch.connector;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;
import pl.sda.flightsearch.model.Flight;

import java.util.List;

@Getter
@Setter
@Component
public class KiwiDataResponse {

    private String currency;

    @JsonProperty("data")
    private List<Flight> flights;
}
