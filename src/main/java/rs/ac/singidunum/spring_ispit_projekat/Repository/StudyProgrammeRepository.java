package rs.ac.singidunum.spring_ispit_projekat.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ac.singidunum.spring_ispit_projekat.Entity.StudyProgramme;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudyProgrammeRepository extends JpaRepository<StudyProgramme, Integer> {

    List<StudyProgramme> findAllByDeletedAtIsNull();

    Optional<StudyProgramme> findByIdAndDeletedAtIsNull(Integer id);

}
