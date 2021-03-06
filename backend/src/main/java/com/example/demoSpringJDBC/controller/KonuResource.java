package com.example.demoSpringJDBC.controller;
import com.example.demoSpringJDBC.model.Konu;
import com.example.demoSpringJDBC.repo.Konu_Repository;
import lombok.AllArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Locale;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/konu")
public class KonuResource {

    private Konu_Repository konu_repository;

    @GetMapping(path = "/getAll")
    public ResponseEntity<List<Konu>> getAll(){
        return new ResponseEntity<>(konu_repository.getAll(), HttpStatus.OK);
    }

    @GetMapping(path = "/getById/{id}")
    public ResponseEntity<Konu> getById(@PathVariable(name = "id") int id)
    {
        //myMailSender.sendMail("kayacihat04@gmail.com","deneme spring mail");
        return new ResponseEntity<>(konu_repository.getById(id), HttpStatus.OK);
    }

    @PostMapping(path = "/deleteById/{id}")
    public ResponseEntity<Object> deleteById(@PathVariable(name = "id") int id)
    {
        konu_repository.deleteById(id);
        return new ResponseEntity<>("başarılı", HttpStatus.OK);
    }

    @PostMapping(path = "/insert", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Object> insert(@RequestBody Konu konu)
    {
        return new ResponseEntity<Object>(konu_repository.insert(konu), HttpStatus.OK);
    }




}