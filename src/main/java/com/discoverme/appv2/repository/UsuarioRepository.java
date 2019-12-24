package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Rol;
import com.discoverme.appv2.model.Usuario;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface UsuarioRepository extends CrudRepository<Usuario, String>{
    List<Usuario> findAllByRol(Rol rol);
}
