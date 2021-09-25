"Use strict";
window.onload = function () {
  var x = document.getElementById("dersSelect");
  fetch("http://localhost:8080/ders/getAll")
    .then((response) => response.json())
    .then((result) => {
        console.log(result);
      for (var i = 0; result.length > i; i++) {
        var option = document.createElement("option");
        option.text = result[i].ders_ad;
        option.value = result[i].ders_id;
        x.add(option, x[2]);
      }
    });
};
function postDers() {
  var yakala = document.getElementById("dersSelect").selectedIndex;
  var text = document.getElementById("dersSelect").options[yakala].value;
  var value = document.getElementById("name").value;

  const konuItem = {
    ders_id: text,
    konu: value,
  };
  fetch("http://localhost:8080/konu/insert", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(konuItem),
  }).then((response) => {
    if (response.ok) {
      window.alert("işleminiz başarıyla gerçekleşti");
    } else {
      window.alert("işleminizi gerçekleştiremiyoruz");
    }
    return response.json;
  });
}

