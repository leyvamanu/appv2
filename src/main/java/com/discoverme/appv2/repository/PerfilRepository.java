package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Perfil;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface PerfilRepository extends CrudRepository<Perfil, Long>{
    
}
