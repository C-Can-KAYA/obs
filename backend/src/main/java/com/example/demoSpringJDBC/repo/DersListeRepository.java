package com.example.demoSpringJDBC.repo;

import com.example.demoSpringJDBC.model.Ders;
import com.example.demoSpringJDBC.model.DersListe;
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
public class DersListeRepository {
    private JdbcTemplate jdbcTemplate;
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public List<DersListe> getAll()
    {

        List<DersListe> dersler = new ArrayList<>();
        String sql="SELECT \"DERS\".\"DERS_ID\", \"OGRETMEN\".\"OGR_NAME\",\"DERS\".\"DERS_AD\" FROM \"OBS\".\"OGRETMEN\" INNER JOIN \"OBS\".\"DERS\" ON \"DERS\".\"OGRETMEN_ID\" = \"OGRETMEN\".\"OGR_ID\"";
        RowMapper<DersListe> rowMapper = new RowMapper<DersListe>()
        {
            @Override public DersListe mapRow(ResultSet rs, int rowNum) throws SQLException
            {
                return new DersListe(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        };

        dersler = jdbcTemplate.query(sql, rowMapper);
        return dersler;

    }

 }
