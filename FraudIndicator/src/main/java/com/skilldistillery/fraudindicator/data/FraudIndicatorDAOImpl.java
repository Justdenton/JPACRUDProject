package com.skilldistillery.fraudindicator.data;

import java.time.LocalDateTime;
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
	public List<FraudIndicator> findByKeyword(String keyword) {
		String jpql = "SELECT fi FROM FraudIndicator fi WHERE fi.description LIKE :keyword";
		return em.createQuery(jpql, FraudIndicator.class).setParameter("keyword", "%" + keyword + "%").getResultList();
	}

	@Override
	public List<FraudIndicator> findAll() { 
		String jpql = "SELECT fi FROM FraudIndicator fi";
		return em.createQuery(jpql, FraudIndicator.class).getResultList();
	}

	@Override
	public FraudIndicator create(FraudIndicator newFi) {
		newFi.setCreateDate(LocalDateTime.now());
		newFi.setUpdateDate(LocalDateTime.now());
		em.persist(newFi);
		return newFi;
	}

	@Override
	public FraudIndicator update(int fraudId, FraudIndicator fi) {
		FraudIndicator existingFi = em.find(FraudIndicator.class, fraudId);
		if (existingFi != null) {
			existingFi.setDescription(fi.getDescription());
			existingFi.setCategory(fi.getCategory());
			existingFi.setUpdateDate(LocalDateTime.now());
		}
		return existingFi;
	}

	@Override
	public boolean deleteById(int fraudId) {
		FraudIndicator fi = em.find(FraudIndicator.class, fraudId);
		if (fi != null) {
			em.remove(fi);
			return true;
		}
		return false;
	}

}
