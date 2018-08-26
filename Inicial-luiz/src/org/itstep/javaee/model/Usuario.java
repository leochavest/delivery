package org.itstep.javaee.model;

public class Usuario {

	private String nome;
	private String cpf;
	private String endereco;
	private String pedido;
	private String telefone;

	public Usuario() {
		super();
	}

	public Usuario(String nome, String cpf, String endereco, String pedido, String telefone) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.endereco = endereco;
		this.pedido = pedido;
		this.telefone = telefone;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getPedido() {
		return pedido;
	}

	public void setPedido(String pedido) {
		this.pedido = pedido;
	}

	@Override
	public String toString() {
		return "Usuario [nome=" + nome + ", cpf=" + cpf + ", endereco=" + endereco + ", pedido=" + pedido
				+ ", telefone=" + telefone + "]";
	}

}
