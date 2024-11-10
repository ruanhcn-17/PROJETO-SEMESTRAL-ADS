<!DOCTYPE html>
<html lang="pt-br">
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.js" integrity="sha512-+k1pnlgt4F1H8L7t3z95o3/KO+o78INEcXTbnoJQ/F2VqDVhWoaiVml/OEHv9HsVgxUaVW+IbiZPUJQfF/YxZw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Funcionário - Live Football</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #000;
            width: 100%;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
        }

        .logo {
            font-size: 24px;
            color: white;
        }

        .logo .live {
            color: #E50914;
            font-weight: bold;
        }

        .container {
            width: 300px;
            background-color: #1E1E1E;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            margin-top: 20px;
        }

        h2 {
            color: #ffffff;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
            color: #ffffff;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            background-color: #333;
            border: none;
            border-radius: 4px;
            color: white;
        }

        .btn-cadastrar {
            width: 100%;
            padding: 10px;
            background-color: #E50914;
            color: white;
            border: none;
            border-radius: 4px;
            margin-top: 20px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-cadastrar:hover {
            background-color: #d40812;
        }
        
        a{
        color:white;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="logo">
            <span class="live">LIVE</span> FOOTBALL
        </div>
    </div>

    <div class="container">
        <h2>Cadastro de Funcionário</h2>
        <form>
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required>

         

            <label for="senha">Senha:</label>
            <input type="password" id="senha" name="senha" required>

            <button type=submit class="btn-cadastrar" onClick="cadastrar()">Cadastrar</button>
            <a href="Index.jsp">Voltar</a>
        </form>
    </div>
    
    <script>
    
    function cadastrar(){
    	var json = {};
    	json.nome = document.getElementById("nome").value;
    	json.senha = document.getElementById("senha").value;
    	
    	$.ajax({
    		url: "FuncionarioServlet",
    		data: json,
    		type: "get",
    		success: function (resp){
    			alert(resp)  
    			window.location.href = "Index.jsp";  
				
    			
    		},
    		error :function (){
    			alert("Houve um erro ao processar");
    		}
    	});
    }
      

    </script>
</body>
</html>
