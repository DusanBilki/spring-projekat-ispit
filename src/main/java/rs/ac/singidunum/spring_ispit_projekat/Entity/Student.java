package rs.ac.singidunum.spring_ispit_projekat.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Optional;

@Entity(name = "student")
@NoArgsConstructor
@Getter
@Setter
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "student_id")
    private Integer id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String surname;

    @Column(nullable = false, unique = true)
    private String indeks;

    @ManyToOne(optional = false)
    @JoinColumn(name = "study_programme_id", nullable = false)
    private StudyProgramme studyProgramme;

    @Column(nullable = false)
    private LocalDateTime createdAt= LocalDateTime.now();

    private LocalDateTime updatedAt;

    @JsonIgnore
    private LocalDateTime deletedAt;
}
