package com.example.demoSpringJDBC.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Getter
@NoArgsConstructor
public class KonuListe {
    private int konuId;
    private String dersAd;
    private String konu;
}
