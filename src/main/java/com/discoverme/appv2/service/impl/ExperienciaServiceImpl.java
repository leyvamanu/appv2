package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.model.Experiencia;
import com.discoverme.appv2.repository.ExperienciaRepository;
import com.discoverme.appv2.service.ExperienciaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExperienciaServiceImpl implements ExperienciaService {
    
    @Autowired
    ExperienciaRepository experienciaRepository;


    @Override
    public List<Experiencia> findAll() {
        return (List<Experiencia>) experienciaRepository.findAll();
    }
    
}