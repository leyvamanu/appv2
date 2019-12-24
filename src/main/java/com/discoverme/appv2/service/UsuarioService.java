package com.discoverme.appv2.service;

import com.discoverme.appv2.model.Rol;
import com.discoverme.appv2.model.Usuario;
import java.util.List;

public interface UsuarioService {
    List<Usuario> findAllByRol(Rol rol);
    Usuario findById(String id);
}
