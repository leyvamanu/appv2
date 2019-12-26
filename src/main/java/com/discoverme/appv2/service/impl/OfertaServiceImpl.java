package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.repository.OfertaRepository;
import com.discoverme.appv2.service.OfertaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OfertaServiceImpl implements OfertaService {
    
    @Autowired
    OfertaRepository ofertaRepository;
    
}