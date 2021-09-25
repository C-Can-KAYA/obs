'Use strict'
let ogrenci = {
    list: [
    ],
    addNewItem: function (item) {
        this.list.push(item);
    },

}
const ogrenciPostUrl = 'http://localhost:8080/ogrenci/getAll';
let ogrenciWho = fetch(ogrenciPostUrl).then(response => response.json())
    .then(result => {
        var table = document.getElementById("myTable");
        for (var i = 0; result.length > i; i++) {
            var ogrencitem = {
                id: result[i].id,
                number: result[i].number,
                name: result[i].name
            }
            var row = table.insertRow(1);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            cell1.innerHTML = result[i].number;
            cell2.innerHTML = result[i].name;
            ogrenci.list.push(ogrencitem);
 
        }
       

    }
    
    
    );
    
    console.log(ogrenci);

   
    