document.addEventListener('DOMContentLoaded', function () {
    cargarRegiones();
    cargarCandidatos();
    
    document.getElementById('region').addEventListener('change', function() {
        cargarComunas(this.value);
    });

    document.getElementById('votacionForm').addEventListener('submit', function(event) {
        if (!validarFormulario()) {
            event.preventDefault();
        }
    });
});

function cargarRegiones() {
    fetch('cargar_regiones.php')
        .then(response => response.json())
        .then(data => {
            let regionSelect = document.getElementById('region');
            regionSelect.innerHTML = '<option value="">Seleccione región</option>';
            data.forEach(region => {
                let option = document.createElement('option');
                option.value = region.id;
                option.text = region.nombre;
                regionSelect.add(option);
            });
        });
}

function cargarComunas(regionId) {
    let comunaSelect = document.getElementById('comuna');
    comunaSelect.innerHTML = '<option value="">Seleccione comuna</option>';
    if (regionId) {
        fetch('cargar_comunas.php?region_id=' + regionId)
            .then(response => response.json())
            .then(data => {
                data.forEach(comuna => {
                    let option = document.createElement('option');
                    option.value = comuna.id;
                    option.text = comuna.nombre;
                    comunaSelect.add(option);
                });
            });
    }
}

function cargarCandidatos() {
    fetch('cargar_candidatos.php')
        .then(response => response.json())
        .then(data => {
            let candidatoSelect = document.getElementById('candidato');
            candidatoSelect.innerHTML = '<option value="">Seleccione candidato</option>';
            data.forEach(candidato => {
                let option = document.createElement('option');
                option.value = candidato.id;
                option.text = candidato.nombre;
                candidatoSelect.add(option);
            });
        });
}

function formatearRUT(input) {
    let rut = input.value.replace(/\./g, '').replace('-', '');
    if (rut.length > 1) {
        let cuerpo = rut.slice(0, -1);
        let dv = rut.slice(-1).toUpperCase();
        let rutFormateado = cuerpo.replace(/\B(?=(\d{3})+(?!\d))/g, ".") + '-' + dv;
        input.value = rutFormateado;
    }
}

function validarRUT(rut) {
    rut = rut.replace(/\./g, '').replace('-', '');
    let cuerpo = rut.slice(0, -1);
    let dv = rut.slice(-1).toUpperCase();
    let suma = 0;
    let multiplo = 2;

    for (let i = 1; i <= cuerpo.length; i++) {
        let index = multiplo * rut.charAt(cuerpo.length - i);
        suma += index;
        multiplo = multiplo < 7 ? multiplo + 1 : 2;
    }

    let dvEsperado = 11 - (suma % 11);
    dvEsperado = dvEsperado == 11 ? 0 : dvEsperado;
    dvEsperado = dvEsperado == 10 ? 'K' : dvEsperado;

    return dvEsperado == dv;
}

function validarFormulario() {
    let alias = document.getElementById('alias').value;
    let rut = document.getElementById('rut').value;
    let checkboxes = document.querySelectorAll('input[name="como_nos_entero[]"]:checked');

    if (alias.length <= 5 || !/\d/.test(alias) || !/[a-zA-Z]/.test(alias)) {
        alert('Alias debe contener más de 5 caracteres y contener letras y números.');
        return false;
    }

    if (!validarRUT(rut)) {
        alert('RUT inválido.');
        return false;
    }

    if (checkboxes.length < 2) {
        alert('Debe seleccionar al menos dos opciones en "¿Cómo se enteró de Nosotros?".');
        return false;
    }

    return true;
}
