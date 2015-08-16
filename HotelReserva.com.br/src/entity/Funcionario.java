package entity;

import javax.persistence.Entity;

@Entity
public class Funcionario extends Pessoa {
	
	private String matricula;
	
	private String cpts;
	
	public Funcionario() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Funcionario(long id) {
		super(id);
		// TODO Auto-generated constructor stub
	}
	
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getCpts() {
		return cpts;
	}
	public void setCpts(String cpts) {
		this.cpts = cpts;
	}

}
