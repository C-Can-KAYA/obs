package com.example.demoSpringJDBC.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Getter
@NoArgsConstructor
public class DersListe {
    private int ders_id;
    private String ogr_name;
    private String ders_ad;

}
