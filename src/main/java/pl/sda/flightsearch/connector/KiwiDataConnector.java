package pl.sda.flightsearch.connector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.time.LocalDate;
import java.util.HashMap;
@Component
public class KiwiDataConnector {
    private static final String REQRES_URL = "https://api.skypicker.com/flights";
    private RestTemplate restTemplate;
    private final String parnter="picky";

    @Autowired
    public KiwiDataConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public KiwiDataResponse connect(String flyFrom, String flyTo, LocalDate dateFrom, LocalDate dateTo) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(REQRES_URL)
                .queryParam("flyFrom", flyFrom)
                .queryParam("to", flyTo)
                .queryParam("dateFrom", dateFrom)
                .queryParam("dateTo", dateTo)
                .queryParam("partner",parnter);

        return restTemplate.getForObject(builder.toUriString(), KiwiDataResponse.class, new HashMap<>());
    }

}
