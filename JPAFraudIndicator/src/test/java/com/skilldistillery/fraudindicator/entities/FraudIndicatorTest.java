package com.skilldistillery.fraudindicator.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import java.time.LocalDateTime;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.transaction.Transactional;

@Transactional
class FraudIndicatorTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private FraudIndicator fi;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFraudIndicator");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		fi = em.find(FraudIndicator.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		fi = null;
	}

	// ENTITY MAPPING
	@Test
	void test_FraudIndicator_entity_mappings() {
		assertNotNull(fi);
		assertEquals("The vehicle was recovered stripped or burned, with no evidence of forced entry.",
				fi.getDescription());

	}

	// CREATE
	@Test
	void test_create_FraudIndicator() {
		em.getTransaction().begin();

		FraudIndicator newFi = new FraudIndicator();
		newFi.setDescription("New fraudulent indicator");
		newFi.setCategory("auto");
		newFi.setCreateDate(LocalDateTime.now());
		newFi.setUpdateDate(LocalDateTime.now());

		em.persist(newFi);
		em.getTransaction().commit();

		FraudIndicator createdFi = em.find(FraudIndicator.class, newFi.getId());
		assertNotNull(createdFi);
		assertEquals("New fraudulent indicator", createdFi.getDescription());
	}
	
	

}
