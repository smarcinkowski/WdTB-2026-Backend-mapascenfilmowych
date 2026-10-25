package pl.wsb.mapascenfilmowych.scene.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDate;

/**
 * Scena filmowa. Powiązania z filmem i lokalizacją (klucze obce) dojdą na kolejnych zajęciach.
 */
@Entity
@Table(name = "scene")
public class Scene {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false, length = 120)
    private String title;

    @Column(name = "description", length = 500)
    private String description;

    @Column(name = "start_second", nullable = false)
    private Integer startSecond;             // moment rozpoczęcia sceny w filmie

    @Column(name = "duration_seconds")
    private Integer durationSeconds;

    @Column(name = "filmed_on")
    private LocalDate filmedOn;              // dzień zdjęć, jeśli znany

    protected Scene() {
    }

    public Scene(String title, String description, Integer startSecond, Integer durationSeconds, LocalDate filmedOn) {
        this.title = title;
        this.description = description;
        this.startSecond = startSecond;
        this.durationSeconds = durationSeconds;
        this.filmedOn = filmedOn;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Integer getStartSecond() {
        return startSecond;
    }

    public Integer getDurationSeconds() {
        return durationSeconds;
    }

    public LocalDate getFilmedOn() {
        return filmedOn;
    }
}
