package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@SequenceGenerator(name = "categoria_id",sequenceName = "seq_categoria",allocationSize=1)
public class Categoria extends AbstractEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="categoria_id")
	private long id;
	
	
	@NotEmpty(message="O Campo não pode ser vazio")
	private String nome;
	
	private Integer capacidade;
	
	private Float valor;
	
	
	public Categoria() {
		super();
	}
	
	public Categoria(long id) {
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

	public Integer getCapacidade() {
		return capacidade;
	}

	public void setCapacidade(Integer capacidade) {
		this.capacidade = capacidade;
	}

	public Float getValor() {
		return valor;
	}

	public void setValor(Float valor) {
		this.valor = valor;
	}
	
}
