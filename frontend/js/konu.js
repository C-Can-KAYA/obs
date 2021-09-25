"Use strict";
function deleteKonu() {
  fetch(
    "http://localhost:8080/konu/deleteById/" +
      document.getElementById("number").value,
    {
      method: "POST",
    }
  ).then((response) => {
    if (response.ok) {
      window.alert("işleminiz başarıyla gerçekleşti");
    } else {
      window.alert("işleminizi gerçekleştiremiyoruz");
    }
    return response.json;
  });
}

