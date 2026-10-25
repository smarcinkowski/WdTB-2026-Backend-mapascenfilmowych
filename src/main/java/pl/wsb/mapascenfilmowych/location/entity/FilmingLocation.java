package pl.wsb.mapascenfilmowych.location.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** Miejsce, w którym kręcono sceny filmowe, z położeniem na mapie. */
@Entity
@Table(name = "filming_location")
public class FilmingLocation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 120)
    private String name;

    @Column(name = "description", length = 500)
    private String description;

    @Column(name = "city", length = 60)
    private String city;

    @Column(name = "country", nullable = false, length = 60)
    private String country;

    @Enumerated(EnumType.STRING)
    @Column(name = "type", nullable = false, length = 20)
    private LocationType type;

    @Column(name = "public_access", nullable = false)
    private Boolean publicAccess;            // czy miejsce można zwiedzać

    @Embedded
    private Coordinates coordinates;

    protected FilmingLocation() {
    }

    public FilmingLocation(String name, String description, String city, String country,
                           LocationType type, Boolean publicAccess, Coordinates coordinates) {
        this.name = name;
        this.description = description;
        this.city = city;
        this.country = country;
        this.type = type;
        this.publicAccess = publicAccess;
        this.coordinates = coordinates;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getCity() {
        return city;
    }

    public String getCountry() {
        return country;
    }

    public LocationType getType() {
        return type;
    }

    public Boolean getPublicAccess() {
        return publicAccess;
    }

    public Coordinates getCoordinates() {
        return coordinates;
    }
}
