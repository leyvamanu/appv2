package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.repository.ServicioRepository;
import com.discoverme.appv2.service.ServicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServicioServiceImpl implements ServicioService {
    
    @Autowired
    ServicioRepository servicioRepository;
    
}