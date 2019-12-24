package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Tipo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface TipoRepository extends CrudRepository<Tipo, Long>{
    
}
