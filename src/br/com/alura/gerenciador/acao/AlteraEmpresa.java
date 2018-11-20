package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class AlteraEmpresa implements Acao {

	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		System.out.println("ação Alterando empresa");
		
		//Obtendo os parâmetros
		Integer id = Integer.valueOf(request.getParameter("id"));
	
		String nome = request.getParameter("nome");
		
		Date dataAbertura = new Date();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataAbertura = sdf.parse(request.getParameter("data"));
		} catch (java.text.ParseException e) {
			throw new ServletException(e);
		}
		
		// Construindo o objeto
		Empresa empresa = new Empresa();
		empresa.setId(id); 
		empresa.setNome(nome);
		empresa.setDataAbertura(dataAbertura);
		
		// Salvando alterações
		Banco banco = new Banco();
		try {
			banco.salvar(empresa);			
		} catch (Exception e) {
			System.err.println("Erro ao editar empresa.");
		}
		
		request.setAttribute("sucesso", "Empresa editada com sucesso.");
		return "redirect:entrada?acao=ListaEmpresas";
		
		// Retornando
		//response.sendRedirect("entrada?acao=ListaEmpresas");
	}

}
