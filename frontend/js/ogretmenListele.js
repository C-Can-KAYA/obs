"Use strict";
const ogretmenPostUrl = "http://localhost:8080/ogretmen/getAll";
let ogretmenWho = fetch(ogretmenPostUrl)
  .then((response) => response.json())
  .then((result) => {
    var table = document.getElementById("myTable");
    for (var i = 0; result.length > i; i++) {
      var row = table.insertRow(1);
      var cell1 = row.insertCell(0);
      var cell2 = row.insertCell(1);
      cell1.innerHTML = result[i].ogr_id;
      cell2.innerHTML = result[i].ogr_name;
    }
  });
