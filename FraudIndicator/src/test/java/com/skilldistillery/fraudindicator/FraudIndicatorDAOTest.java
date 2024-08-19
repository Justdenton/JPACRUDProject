package com.skilldistillery.fraudindicator;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import java.time.LocalDateTime;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;
import com.skilldistillery.fraudindicator.data.FraudIndicatorDAO;
import com.skilldistillery.fraudindicator.entities.FraudIndicator;

@SpringBootTest
@Transactional
class FraudIndicatorDAOTest {

	@Autowired
	private FraudIndicatorDAO fiDao;

	@Test
	void test_findById() {
		FraudIndicator fi = fiDao.findById(1);
		assertNotNull(fi);
		assertEquals("The vehicle was recovered stripped or burned, with no evidence of forced entry.",
				fi.getDescription());
	}

	@Test
	void test_findAll() {
		List<FraudIndicator> allIndicators = fiDao.findAll();
		assertNotNull(allIndicators);
		assertTrue(allIndicators.size() > 0);
	}

	@Test
	void test_create_FraudIndicator() {
		FraudIndicator newFi = new FraudIndicator();
		newFi.setDescription("ADDED INDICATOR");
		newFi.setCategory("auto");
		newFi.setCreateDate(LocalDateTime.now());
		newFi.setUpdateDate(LocalDateTime.now());

		FraudIndicator createdFi = fiDao.create(newFi);

		assertNotNull(createdFi);
		assertTrue(createdFi.getId() > 0);
	}

	@Test
	void test_update_FraudIndicator() {
		FraudIndicator fi = fiDao.findById(1);
		fi.setDescription("UPDATED INDICATOR");

		FraudIndicator updatedFi = fiDao.update(fi.getId(), fi);

		assertNotNull(updatedFi);
		assertEquals("UPDATED INDICATOR", updatedFi.getDescription());
	}

	@Test
	void test_delete_FraudIndicator() {
		boolean isDeleted = fiDao.deleteById(2);
		assertTrue(isDeleted);
		assertNull(fiDao.findById(2));
	}

}
