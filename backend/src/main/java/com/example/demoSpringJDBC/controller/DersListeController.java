package com.example.demoSpringJDBC.controller;

import com.example.demoSpringJDBC.model.Ders;
import com.example.demoSpringJDBC.model.DersListe;
import com.example.demoSpringJDBC.repo.DersListeRepository;
import com.example.demoSpringJDBC.repo.DersRepository;
import lombok.AllArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping(path = "dersListe")
@io.swagger.annotations.Api(value = "Ders Listelerle ilgili endpointler", tags = "DersListe")
public class DersListeController {
    DersListeRepository dersListeRepository;
    // http://localhost:8080/dersListe/getAll
    @GetMapping(path = "/getAll") public ResponseEntity<List<DersListe>> getAll(HttpServletRequest request)
    {
        return new ResponseEntity<>(dersListeRepository.getAll(), HttpStatus.OK);
    }

}
