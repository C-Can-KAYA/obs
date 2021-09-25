package com.example.demoSpringJDBC.repo;

import com.example.demoSpringJDBC.model.DersListe;
import com.example.demoSpringJDBC.model.KonuListe;
import lombok.AllArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
@AllArgsConstructor
public class KonuListeRepository {
    private JdbcTemplate jdbcTemplate;

    public List<KonuListe> getAll()
    {

        List<KonuListe> dersler = new ArrayList<>();
        String sql="SELECT \"KONU\".\"KONU_ID\",\"DERS\".\"DERS_AD\",\"KONU\".\"KONU\" FROM \"OBS\".\"KONU\" INNER JOIN \"OBS\".\"DERS\" ON \"DERS\".\"DERS_ID\" = \"KONU\".\"DERS_ID\"";
        RowMapper<KonuListe> rowMapper = new RowMapper<KonuListe>()
        {
            @Override public KonuListe mapRow(ResultSet rs, int rowNum) throws SQLException
            {
                return new KonuListe(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        };

        dersler = jdbcTemplate.query(sql, rowMapper);
        return dersler;

    }
}
