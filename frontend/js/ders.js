"Use strict";
function deleteDers() {
  fetch(
    "http://localhost:8080/ders/deleteById/" +
      document.getElementById("number").value,
    {
      method: "DELETE",
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

