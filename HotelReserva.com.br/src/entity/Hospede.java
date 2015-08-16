package entity;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;

@Entity
public class Hospede extends Pessoa{
	
	@OneToMany(mappedBy="hospede")
	private List<Reserva> reservas;

	public Hospede() {
		super();
	}

	public List<Reserva> getReservas() {
		return reservas;
	}

	public void setReservas(List<Reserva> reservas) {
		this.reservas = reservas;
	}
	
}
