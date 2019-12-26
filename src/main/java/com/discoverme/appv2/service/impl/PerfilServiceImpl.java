package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.repository.PerfilRepository;
import com.discoverme.appv2.service.PerfilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PerfilServiceImpl implements PerfilService {
    
    @Autowired
    PerfilRepository perfilRepository;
    
}