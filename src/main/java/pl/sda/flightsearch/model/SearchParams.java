package pl.sda.flightsearch.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
@Getter
@Setter
public class SearchParams {
    String flyFrom;
    String flyTo;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateFrom;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateTo;
}
