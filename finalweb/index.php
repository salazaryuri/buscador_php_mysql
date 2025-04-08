<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Venta de Casas - Bienes Raíces</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <aside class="sidebar">
      <h2>Filtros</h2>
      <form id="filterForm">
        <div class="filter-group">
          <label for="pais">País:</label>
          <select name="pais" id="pais">
            <option value="todos">Todos</option>
            <option value="Guatemala">Guatemala</option>
            <option value="Belize">Belize</option>
            <option value="El Salvador">El Salvador</option>
            <option value="Honduras">Honduras</option>
            <option value="Nicaragua">Nicaragua</option>
            <option value="Costa Rica">Costa Rica</option>
            <option value="Panamá">Panamá</option>
          </select>
        </div>
        <div class="filter-group">
          <label for="ciudad">Ciudad:</label>
          <select name="ciudad" id="ciudad">
            <option value="todos">Todos</option>
          </select>
        </div>
        <div class="filter-group">
          <label for="precio">Rango de Precios: <span id="precioValue">0 - 150000</span></label>
          <input type="range" id="precio" name="precio" min="0" max="150000" step="500" value="0" multiple>
        </div>
        <div class="filter-group">
          <label for="tipo">Tipo de Casa:</label>
          <select name="tipo" id="tipo">
            <option value="todos">Todos</option>
            <option value="Casa">Casa</option>
            <option value="Apartamento">Apartamento</option>
            <option value="Condominio">Condominio</option>
          </select>
        </div>
        <div class="filter-group">
          <button id="buscarBtn" type="submit">BUSCAR</button>
        </div>
      </form>
    </aside>
    <main class="content">
      <h2>Resultados de la Búsqueda</h2>
      <div id="resultados">
        <!-- Resultados aparecerán aquí -->
      </div>
    </main>
  </div>
  <script src="script.js"></script>
</body>
</html>
