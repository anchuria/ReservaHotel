package entity;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@SequenceGenerator(name = "pessoa_id", sequenceName="seq_pessoa",allocationSize=1)
@Inheritance(strategy=InheritanceType.JOINED)
public class Pessoa extends AbstractEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="pessoa_id")
	private long id;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String nome;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String CPF;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String email;
	@NotEmpty(message="O Campo não pode ser vazio")
	private String telefone;
	
	@Embedded
	private Endereco endereco;
	
	@OneToOne
	private Usuario usuario;
	
	public Pessoa() {
		super();
	}

	public Pessoa(long id) {
		super();
		this.id = id;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCPF() {
		return CPF;
	}

	public void setCPF(String cPF) {
		CPF = cPF;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

}
