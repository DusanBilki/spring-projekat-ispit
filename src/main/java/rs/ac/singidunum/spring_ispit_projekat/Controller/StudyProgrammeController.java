package rs.ac.singidunum.spring_ispit_projekat.Controller;


import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.spring_ispit_projekat.Entity.StudyProgramme;
import rs.ac.singidunum.spring_ispit_projekat.Service.StudyProgrammeService;
import rs.ac.singidunum.spring_ispit_projekat.model.StudyProgrammeModel;

import java.util.List;

@RestController
@CrossOrigin
@RequiredArgsConstructor
@RequestMapping(path = "/api/study-programme")
public class StudyProgrammeController {
    private final StudyProgrammeService service;

    @GetMapping
    public List<StudyProgramme> getAll(){
        return service.getAllStudyProgramme();
    }

    @GetMapping(path = "/{id}")
    public ResponseEntity<StudyProgramme> getById(@PathVariable Integer id){
        return ResponseEntity.of(service.getStudyProgrammeById(id));
    }

    @PostMapping
    public StudyProgramme create(@RequestBody StudyProgrammeModel model){
        return service.saveStudyProgramme(model);
    }

    @PutMapping(path = "/{id}")
    public StudyProgramme update(@PathVariable Integer id,@RequestBody StudyProgrammeModel model){
        return service.updateStudyProgramme(id, model);
    }

    @DeleteMapping(path = "/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Integer id){
        service.deleteStudyProgramme(id);
    }
}
