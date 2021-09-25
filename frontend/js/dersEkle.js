"Use strict";
window.onload = function () {
  var x = document.getElementById("ogretmenSelect");
  fetch("http://localhost:8080/ogretmen/getAll")
    .then((response) => response.json())
    .then((result) => {
      for (var i = 0; result.length > i; i++) {
        var option = document.createElement("option");
        option.text = result[i].ogr_name;
        option.value = result[i].ogr_id;
        x.add(option, x[2]);
      }
    });
};
function postDers() {
  var yakala = document.getElementById("ogretmenSelect").selectedIndex;
  var text = document.getElementById("ogretmenSelect").options[yakala].value;
  var value = document.getElementById("name").value;

  const dersItem = {
    ogretmen_id: text,
    ders_ad: value,
  };
  fetch("http://localhost:8080/ders/insert", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(dersItem),
  }).then((response) => {
    if (response.ok) {
      window.alert("işleminiz başarıyla gerçekleşti");
    } else {
      window.alert("işleminizi gerçekleştiremiyoruz");
    }
    return response.json;
  });
}

