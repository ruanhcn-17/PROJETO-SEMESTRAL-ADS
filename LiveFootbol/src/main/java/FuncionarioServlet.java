

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FuncionarioServlet
 */
@WebServlet("/FuncionarioServlet")
public class FuncionarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FuncionarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setCharacterEncoding("UTF8");
		
		try {
			String nome  =  request.getParameter("nome");
			String senha =  request.getParameter("senha");
			
			Class.forName("org.sqlite.JDBC");
			String diretorio = System.getProperty("wtp.deploy").toString().split(".metadata")[0];
			
			String dataBase = diretorio + "\\livefootbol.db";
			Connection conn = DriverManager.getConnection("jdbc:sqlite:"+dataBase);
			
			String sql  = "insert into funcionario(nome,senha) values (?, ?)";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, nome);
			pstm.setString(2, senha);
			
			if (pstm.executeUpdate()>0) {
				String msg = "Dados inseridos com sucesso!";
				response.getWriter().append(msg);
			}else{
				String msg = "Não foi possível inserir!";
				response.getWriter().append(msg);
			}	
		}catch(Exception e) {
			String msg = "Não foi possível inserir! Detalhes: " + e.getMessage();
			response.getWriter().append(msg);
		}
			
		
	}
 
		
		
		
		
		//C:\Users\Aluno\Documents\tela cadastro
		
		
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
