<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Live Football </title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background-color: #141414;
      color: #fff;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #000;
      padding: 20px;
    }

    header h1 {
      font-size: 24px;
    }

    nav ul {
      list-style: none;
      display: flex;
    }

    nav ul li {
      margin-left: 20px;
    }

    nav ul li a {
      text-decoration: none;
      color: #fff;
    }

    .hero {
      background-color: #1a1a1a;
      padding: 40px;
      text-align: center;
    }

    .hero h2 {
      font-size: 28px;
      margin-bottom: 20px;
    }

    .live-game {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .live-game img {
      width: 300px;
      height: auto;
      margin-right: 20px;
      border-radius: 15px; /* Bordas redondas */
    }

    .game-info {
      text-align: left;
    }

    .game-info h3 {
      font-size: 22px;
      margin-bottom: 10px;
    }

    .game-info p {
      font-size: 18px;
      margin-bottom: 10px;
    }

    button {
      background-color: #e50914;
      color: #fff;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      font-size: 16px;
    }

    .carousel {
      padding: 40px;
    }

    .carousel h2 {
      font-size: 24px;
      margin-bottom: 20px;
    }

    .carousel-container {
      display: flex;
      overflow-x: auto;
      scrollbar-width: none;
    }

    .carousel-container::-webkit-scrollbar {
      display: none;
    }

    .game-item {
      margin-right: 20px;
      text-align: center;
    }

    .game-item img {
      width: 200px;
      height: 120px;
      border-radius: 10px;
    }

    footer {
      background-color: #000;
      padding: 20px;
      text-align: center;
    }
    
     .dropdown {
    position: flex;
    display: inline-block;
  }

  .dropdown-content {
    display: none;
    position: fixed;
    background-color: #333;
    min-width: 160px;
    z-index: 1;
    left: 85%;
    
  }

  .dropdown-content a {
    color: white;
    padding: 12px 10px;
    text-decoration: none;
    display: block;
  }

  .dropdown-content a:hover {
    background-color: #111;
  }

  .dropdown:hover .dropdown-content {
    display: block;
  }
  </style>
</head>
<body>
  <header>
    <h1>LIVE FOOTBALL</h1>
   <nav>
  <ul>
    <li><a href="#">HOME</a></li>
    <li><a href="#">AO VIVO</a></li>
    <li><a href="#">JOGOS GRAVADOS</a></li>
    <li class="dropdown">
      <a href="#" >CONTA</a>
      <div class="dropdown-content">
        <a href="CadastroCliente.jsp">Cadastro de Cliente</a>
        <a href="CadastroFuncionario.jsp">Cadastro de Funcionário</a>
      </div>
    </li>
  </ul>
</nav>
  </header>

  <section class="hero">
    <h2>AO VIVO AGORA </h2>
    <div class="live-game">
      <img src="https://www.rbsdirect.com.br/filestore/5/2/1/4/2/0/5_fa2c5ff3b134fde/5024125_4e2166f7042c620.jpg?w=700" alt="Corinthians X Flamengo">
      <div class="game-info">
        <h3>Corinthians x Flamengo</h3>
        <p>Copa do Brasil - 18:00</p>
        <button>Assistir ao vivo</button>
      </div>
    </div>
  </section>

  <section class="carousel">
    <h2>JOGOS GRAVADOS</h2>
    <div class="carousel-container">
      <div class="game-item">
        <img src="https://www.rbsdirect.com.br/filestore/9/5/9/7/3/0/5_b353696eee06b12/5037959_cf701b69f497ed8.jpg?w=700" alt="São Paulo x Botafogo">
        <p>São Paulo x Botafogo</p>
      </div>
      <div class="game-item">
        <img src="https://www.rbsdirect.com.br/filestore/0/3/5/1/3/0/5_efd158dfc688028/5031530_ce3a681094463d8.jpg?w=700" alt="Flamengo x Bahia">
        <p>Flamengo x Bahia</p>
      </div>
      <div class="game-item">
        <img src="https://www.rbsdirect.com.br/filestore/1/2/4/4/8/9/4_d8b80a3c660d9c2/4984421_9c88fcd42878a83.jpg?w=700" alt="Palmeiras x Bragantino">
        <p>Palmeiras x Bragantino</p>
      </div>
    </div>
  </section>

  <footer>
    <p>Live Football © 2024 - Todos os direitos reservados.</p>
  </footer>

  <script>
    console.log('Live Football está pronto!');
  </script>
  
  
</body>
</html>
