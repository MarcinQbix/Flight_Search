package pl.sda.flightsearch.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;

@Entity
@Getter
@Setter
public class Airport {
    private String airportCode;
    private String aiportTown;
    private String airportCountry;
}
