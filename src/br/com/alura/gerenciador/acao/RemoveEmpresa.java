package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;

public class RemoveEmpresa implements Acao  {

	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("ação Removendo Empresa");
		
		// Obtendo parâmetros
		Integer id = Integer.valueOf(request.getParameter("id"));
		
		// Removendo do banco de dados
		Banco banco = new Banco();
		banco.remover(id);
		
		return "redirect:entrada?acao=ListaEmpresas";
	}

}
