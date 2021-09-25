'Use strict'
let ogrenci = {
    list: [
    ],
    addNewItem: function (item) {
        this.list.push(item);
    },

}

function getOgrenci() {
    document.getElementById('ogrencilist').innerText ='';
    for (let index = 0; index < ogrenci.list.length; index++) {
        const element = ogrenci.list[index];
    
       var node = document.createElement("LI");
       var textnode = document.createTextNode("Öğrenci id: "+element.id+" Numara id: "+element.number+" Ad: "+element.name);
       node.appendChild(textnode);
       document.getElementById("ogrencilist").appendChild(node);
    }

    return ogrenci;
}
function postOgrenci(){
    var sakla=document.getElementById("name").value;
   var sakla2=document.getElementById("number").value;
    if(sakla<=0 || sakla2<=0){
        window.alert("işleminiz gerçekleştirilemedi");
    }else{
    const ogrencitem ={
        number:parseInt(document.getElementById("number").value),
        name: String(document.getElementById("name").value)
    };

fetch('http://localhost:8080/ogrenci/insert', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify(ogrencitem),
})
.then(response => response.json())
.then(ogrencitem => {
  console.log(ogrencitem);
    window.alert("işleminiz başarıyla gerçekleşti");
});
}}

function deleteOgrenci(){
    fetch('http://localhost:8080/ogrenci/deleteByNumber/' + document.getElementById("number").value, {
  method: 'POST',
})
.then(res => res.text())
.then(res => {
    window.alert("işleminiz başarıyla gerçekleşti");
    console.log(res)}).catch(e=>{
        window.alert("işleminiz gerçekleştirilemedi");
    })
}


 

