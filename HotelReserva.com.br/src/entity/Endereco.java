package entity;

import javax.persistence.Embeddable;

import org.hibernate.validator.constraints.NotEmpty;

@Embeddable
public class Endereco {
	@NotEmpty(message="O Campo não pode ser vazio")
	private String longradouro;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String cidade;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String bairro;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String CEP;
	
	private int numero;
	
	public Endereco() {
		super();
	}

	public String getLongradouro() {
		return longradouro;
	}

	public void setLongradouro(String longradouro) {
		this.longradouro = longradouro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCEP() {
		return CEP;
	}

	public void setCEP(String cEP) {
		CEP = cEP;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}
}
