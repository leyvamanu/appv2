package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.repository.ComentarioRepository;
import com.discoverme.appv2.service.ComentarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComentarioServiceImpl implements ComentarioService {
    
    @Autowired
    ComentarioRepository comentarioRepository;
    
}
