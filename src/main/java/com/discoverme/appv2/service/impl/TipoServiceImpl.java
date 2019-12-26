package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.repository.TipoRepository;
import com.discoverme.appv2.service.TipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipoServiceImpl implements TipoService {
    
    @Autowired
    TipoRepository tipoRepository;
    
}