package com.skilldistillery.fraudindicator.data;

import java.util.List;

import com.skilldistillery.fraudindicator.entities.FraudIndicator;

public interface FraudIndicatorDAO {

	FraudIndicator findById(int fraudId);
	List<FraudIndicator> findAll();
	FraudIndicator create(FraudIndicator newFi);
	FraudIndicator update(int fraudId, FraudIndicator fi);
	boolean deleteById(int fraudId);

	// List<FraudIndicator> findByKeyword(String description);

}
