package pl.wsb.mapascenfilmowych.movie.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** Film, którego sceny pokazujemy na mapie. */
@Entity
@Table(name = "movie")
public class Movie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false, length = 120)
    private String title;

    @Column(name = "original_title", length = 120)
    private String originalTitle;

    @Column(name = "release_year", nullable = false)
    private Integer releaseYear;

    @Column(name = "director", length = 80)
    private String director;

    @Enumerated(EnumType.STRING)
    @Column(name = "genre", nullable = false, length = 20)
    private MovieGenre genre;

    protected Movie() {
    }

    public Movie(String title, String originalTitle, Integer releaseYear, String director, MovieGenre genre) {
        this.title = title;
        this.originalTitle = originalTitle;
        this.releaseYear = releaseYear;
        this.director = director;
        this.genre = genre;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getOriginalTitle() {
        return originalTitle;
    }

    public Integer getReleaseYear() {
        return releaseYear;
    }

    public String getDirector() {
        return director;
    }

    public MovieGenre getGenre() {
        return genre;
    }
}
