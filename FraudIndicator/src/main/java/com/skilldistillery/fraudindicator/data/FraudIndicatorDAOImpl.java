package com.skilldistillery.fraudindicator.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.fraudindicator.entities.FraudIndicator;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;


@Service
@Transactional
public class FraudIndicatorDAOImpl implements FraudIndicatorDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	
	

	@Override
	public FraudIndicator findById(int fraudId) {
		return em.find(FraudIndicator.class, fraudId);
	}

	@Override
	public List<FraudIndicator> findAll() {
		String jpql = "SELECT fi FROM FraudIndicator fi";
		
		return em.createQuery(jpql, FraudIndicator.class).getResultList();
	}

	@Override
	public FraudIndicator create(FraudIndicator newFi) {
		em.persist(newFi);
		return newFi;
	}

	@Override
	public FraudIndicator update(int fraudId, FraudIndicator fi) {

		
		return null;
	}

	@Override
	public boolean deleteById(int fraudId) {

		
		return false;
	}
	
	
	

}








