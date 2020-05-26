package com.discoverme.appv2.controller;

import com.discoverme.appv2.model.Usuario;
import com.discoverme.appv2.service.UsuarioService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HuespedRestController {

    @Autowired
    private UsuarioService usuarioService;
    
    @GetMapping("/usuarios")
    public List<Usuario> getUsuarios() {
        return usuarioService.findAll();
    }
    
}
