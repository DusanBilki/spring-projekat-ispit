package rs.ac.singidunum.spring_ispit_projekat.Error;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class ExceptionModel {

    private String name;
    private String message;
    private String path;
}
