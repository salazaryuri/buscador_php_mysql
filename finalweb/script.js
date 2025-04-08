document.addEventListener("DOMContentLoaded", function () {
  // Mapeo de países y sus ciudades correspondientes
  const countryCities = {
    "Guatemala": ["Guatemala City", "Antigua", "Quetzaltenango"],
    "Belize": ["Belize City", "San Ignacio", "Corozal"],
    "El Salvador": ["San Salvador", "Santa Ana", "San Miguel"],
    "Honduras": ["Tegucigalpa", "San Pedro Sula", "La Ceiba"],
    "Nicaragua": ["Managua", "León", "Granada"],
    "Costa Rica": ["San José", "Alajuela", "Heredia"],
    "Panamá": ["Panama City", "David", "Colón"]
  };

  const paisSelect = document.getElementById("pais");
  const ciudadSelect = document.getElementById("ciudad");
  const filterForm = document.getElementById("filterForm");
  const resultadosDiv = document.getElementById("resultados");
  const precioRange = document.getElementById("precio");
  const precioValue = document.getElementById("precioValue");

  // Actualizar lista de ciudades según el país seleccionado
  paisSelect.addEventListener("change", function () {
    const selectedCountry = this.value;
    ciudadSelect.innerHTML = ""; // Limpiar opciones existentes

    // Agregar la opción "Todos"
    const defaultOption = document.createElement("option");
    defaultOption.value = "todos";
    defaultOption.text = "Todos";
    ciudadSelect.appendChild(defaultOption);

    // Llenar las ciudades del país seleccionado
    if (selectedCountry !== "todos" && countryCities[selectedCountry]) {
      countryCities[selectedCountry].forEach(function (city) {
        const option = document.createElement("option");
        option.value = city;
        option.text = city;
        ciudadSelect.appendChild(option);
      });
    }
  });

  // Actualizar rango de precios dinámicamente
  precioRange.addEventListener("input", function () {
    precioValue.textContent = `0 - ${this.value}`;
  });

  // Enviar el formulario al hacer clic en "Buscar"
  filterForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Evitar recarga de la página
    const formData = new FormData(filterForm);

    fetch("search.php", {
      method: "POST",
      body: formData
    })
      .then((response) => response.text())
      .then((data) => {
        resultadosDiv.innerHTML = data;
      })
      .catch((error) => console.error("Error:", error));
  });
});
