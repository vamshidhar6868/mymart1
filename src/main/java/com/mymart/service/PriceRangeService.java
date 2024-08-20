package com.mymart.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class PriceRangeService {

    public List<Map<String, String>> getPriceRanges() {
        return List.of(
            Map.of("value", "0-50", "label", "₹0 - ₹50"),
            Map.of("value", "51-100", "label", "₹51 - ₹100"),
            Map.of("value", "101-200", "label", "₹101 - ₹200"),
            Map.of("value", "201-500", "label", "₹201 - ₹500"),
            Map.of("value", "500-above", "label", "₹500 and above")
        );
    }
}
