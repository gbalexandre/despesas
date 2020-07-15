package br.com.impacta.springmvc.gerenciadordespesas.despesas.model;

public enum Categoria {
	ALIMENTACAO("Alimentação"), LAZER("Lazer"), SAUDE("Saude"), PESSOAL("Depesas Pessoais"),
	PAGAMENTOS("Pagamentos"), MORADIA("Moradia"), TRANSPORTE("Transporte"),
	EDUCACAO("Educação");
	
	private String nome;
	
	private Categoria(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return this.nome;
	}
}
