alert("Dear valued customer - Please insert accurate information because once you enter the information you cant change it.");



function createPDF(){

    if(document.getElementById("name").value == "" && document.getElementById("nic").value == "" && document.getElementById("add").value == ""
     && document.getElementById("email").value == "" && document.getElementById("details").value == "" ){
        alert("Please enter all !!!!")
    }

    else{

        var doc = new jsPDF();
		
		
		
        doc.text(document.getElementById("name").value, 3, 20);
        doc.text(document.getElementById("nic").value, 3, 30);
        doc.text(document.getElementById("add").value, 3, 40);
        doc.text(document.getElementById("email").value, 3, 50);
        doc.text(document.getElementById("details").value, 2, 60);

        doc.save("confirmation-bill.pdf");
    }
}
