package com.skilldistillery.fraudindicator.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

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

	@Test
	void test_FraudIndicator_entity_mappings() {
		assertNotNull(fi);
		assertEquals("Fraud indicator 1.", fi.getDescription());
	
	}

}
