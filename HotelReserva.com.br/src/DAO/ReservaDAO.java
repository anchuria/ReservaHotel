package DAO;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import entity.Reserva;
@Repository
public class ReservaDAO extends AbstractDAO<Reserva>{
	


	public Class<Reserva> entityClass() {
		return Reserva.class;
	}

}
