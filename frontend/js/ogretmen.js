"Use strict";
function postOgretmen() {
  const ogretmenitem = {
    ogr_name: document.getElementById("text").value,
  };

  fetch("http://localhost:8080/ogretmen/insert", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(ogretmenitem),
  })
    .then((response) => response.json)
    .then(
      window.alert("işleminiz başarıyla gerçekleşti")
    );
}
function deleteOgretmen() {
  fetch(
    "http://localhost:8080/ogretmen/deleteById/" +
      document.getElementById("number").value,
    {
      method: "POST",
    }
  )
    .then((res) => res.text())
    .then((res) => {

      window.alert("işleminiz başarıyla gerçekleşti");
    })
    .catch((e) => {
      window.alert("işleminiz gerçekleştirilemedi hata durumu : "+e);
    });
}
