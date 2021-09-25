package com.example.demoSpringJDBC.controller;

import com.example.demoSpringJDBC.model.DersListe;
import com.example.demoSpringJDBC.model.KonuListe;
import com.example.demoSpringJDBC.repo.KonuListeRepository;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping(path = "konuListe")
@io.swagger.annotations.Api(value = "Konu Listelerle ilgili endpointler", tags = "KonuListe")
public class KonuListeController {
    KonuListeRepository konuListeRepository;
    // http://localhost:8080/konuListe/getAll
    @GetMapping(path = "/getAll") public ResponseEntity<List<KonuListe>> getAll(HttpServletRequest request)
    {
        return new ResponseEntity<>(konuListeRepository.getAll(), HttpStatus.OK);
    }
}
