package br.com.alura.gerenciador.modelo;

import java.util.ArrayList;
import java.util.List;

public class Banco {
	private static Integer chaveSequencial = 1;
	
	private static List<Empresa> lista = new ArrayList<>();
	private static List<Usuario> listaUsuarios = new ArrayList<>();

	static {
		Empresa empresa1 = new Empresa();
		empresa1.setId(Banco.chaveSequencial++);
		empresa1.setNome("Alura");
		
		Empresa empresa2 = new Empresa();
		empresa2.setId(Banco.chaveSequencial++);
		empresa2.setNome("Caelum");
		
		lista.add(empresa1);
		lista.add(empresa2);
		
		
		// -- Usuários ---
		Usuario u1 = new Usuario();
		u1.setLogin("nico");
		u1.setSenha("123");
		
		Usuario u2 = new Usuario();
		u2.setLogin("ana");
		u2.setSenha("456");
		
		listaUsuarios.add(u1);
		listaUsuarios.add(u2);
	}
	
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.lista;
	}

	
	public Empresa getEmpresa(Empresa empresa) {
		for (Empresa e : this.getEmpresas()) {
			if(e.equals(empresa)) {
				return e;
			}
		}
		
		return null;
	}

	
	public Empresa getEmpresa(Integer id) {
		Empresa empresa = new Empresa();
		empresa.setId(id);
		return this.getEmpresa(empresa);
	}

	
	public boolean remover(Integer id) {
		
		Empresa empresa = this.getEmpresa(id);
		
		return this.getEmpresas().remove(empresa);
	}

	
	public void salvar(Empresa empresa) throws Exception {
		// Recupera a empresa original
		Empresa original = this.getEmpresa(empresa);
		
		// Valida o id da empresa
		if(original == null) {
			throw new Exception("Empresa a ser alterada não existe no banco de dados.");
		}
		
		original.copy(empresa);
	}

	public Usuario existeUsuario(String login, String senha) {

		for (Usuario usuario : listaUsuarios) {
			if(usuario.ehIgual(login, senha)) {
				return usuario;
			}
		}
		
		return null;
	}

}
