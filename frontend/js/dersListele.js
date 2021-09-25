"Use strict";
dersliste = [];

window.onload = function () {
  fetch("http://localhost:8080/dersListe/getAll")
    .then((response) => response.json())
    .then((result) => {
      let dersItem = [];
      var table = document.getElementById("myTable");
      for (var i = 0; result.length > i; i++) {
        dersItem.push({
          ders_id: result[i].ders_id,
          ogr_name: result[i].ogr_name,
          ders_ad: result[i].ders_ad,
        });
        var row = table.insertRow(1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell1.innerHTML = result[i].ders_id;
        cell2.innerHTML = result[i].ogr_name;
        cell3.innerHTML = result[i].ders_ad;
        dersliste.push(dersItem);
      }
    });
};

