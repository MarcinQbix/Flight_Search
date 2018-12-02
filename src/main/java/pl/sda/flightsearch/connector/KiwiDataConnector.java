package pl.sda.flightsearch.connector;

import org.apache.tomcat.jni.Local;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
@Component
public class KiwiDataConnector {
    private static final String REQRES_URL = "https://api.skypicker.com/flights";
    private RestTemplate restTemplate;
    private final String parnter="picky";
    private static final  DateTimeFormatter DATE_PATTERN = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    @Autowired
    public KiwiDataConnector(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public KiwiDataResponse connect(String flyFrom, String flyTo, LocalDate dateFrom, LocalDate dateTo,String direct_flights) {
;


        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(REQRES_URL)
                .queryParam("flyFrom", flyFrom.toUpperCase())
                .queryParam("to", flyTo.toUpperCase())
                .queryParam("dateFrom", dateFrom.format(DATE_PATTERN))
                .queryParam("dateTo", dateTo.format(DATE_PATTERN))
                .queryParam("partner",parnter)
                .queryParam("direct_flights",direct_flights);

        return restTemplate.getForObject(builder.toUriString(), KiwiDataResponse.class);
    }

}
