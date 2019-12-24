package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Rol;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface RolRepository extends CrudRepository<Rol, Long> {
    List<Rol> findAllByNombre(String nombre);
}
