package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.model.Rol;
import com.discoverme.appv2.repository.RolRepository;
import com.discoverme.appv2.service.RolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RolServiceImpl implements RolService {
    
    @Autowired
    RolRepository rolRepository;

    @Override
    public Rol findAllByNombre(String nombre) {
        return rolRepository.findAllByNombre(nombre).get(0);
    }
    
}
