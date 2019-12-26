package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.repository.HotelRepository;
import com.discoverme.appv2.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelServiceImpl implements HotelService {
    
    @Autowired
    HotelRepository hotelRepository;
    
}