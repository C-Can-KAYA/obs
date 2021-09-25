"Use strict";
konuliste = [];

window.onload = function () {
  fetch("http://localhost:8080/konuListe/getAll")
    .then((response) => response.json())
    .then((result) => {
      let konuItem = [];
      var table = document.getElementById("myTable");
      for (var i = 0; result.length > i; i++) {
        konuItem.push({
            konuId: result[i].konuId,
          dersAd: result[i].ders_ad,
          konu: result[i].konu,
        });
        console.log(result);
        var row = table.insertRow(1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell1.innerHTML = result[i].konuId;
        cell2.innerHTML = result[i].dersAd;
        cell3.innerHTML = result[i].konu;
        konuliste.push(konuItem);
      }
    });
};

