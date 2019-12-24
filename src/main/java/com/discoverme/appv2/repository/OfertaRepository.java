package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Oferta;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface OfertaRepository extends CrudRepository<Oferta, Long> {

}