function mostrarTecla(event) {
    var tecla = event.key;
    /*console.log("Tecla pressionada: " + tecla);
    console.log(document.
        getElementById("teclaPress"));*/
    document.getElementById("teclaPress").
        innerText  = "Tecla pressionada: " + tecla;    
}

document.getElementById("teclaPress")
            .addEventListener("keypress", mostrarTecla(event));
