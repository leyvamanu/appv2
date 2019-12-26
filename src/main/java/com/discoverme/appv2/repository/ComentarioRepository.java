package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Comentario;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface ComentarioRepository extends CrudRepository<Comentario, Long> {

}