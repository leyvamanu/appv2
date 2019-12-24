package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.model.Rol;
import com.discoverme.appv2.model.Usuario;
import com.discoverme.appv2.repository.UsuarioRepository;
import com.discoverme.appv2.service.UsuarioService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuarioServiceImpl implements UsuarioService {
    
    @Autowired
    UsuarioRepository usuarioRepository;
    
    @Override
    public List<Usuario> findAllByRol(Rol rol) {
        return usuarioRepository.findAllByRol(rol);
    }

    @Override
    public Usuario findById(String id) {
        return usuarioRepository.findById(id).get();
    }
    
}
