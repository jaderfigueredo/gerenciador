package br.com.alura.gerenciador.modelo;

import java.util.Date;

public class Empresa {

	private Integer id;
	private String nome;
	private Date dataAbertura = new Date();
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Date getDataAbertura() {
		return dataAbertura;
	}
	
	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}
	
	public boolean equals(Empresa e) {
		return this.getId() == e.getId();
	}
	
	public void copy(Empresa empresa) {
		this.setId(empresa.getId());
		this.setNome(empresa.getNome());
		this.setDataAbertura(empresa.getDataAbertura());
	}
}
