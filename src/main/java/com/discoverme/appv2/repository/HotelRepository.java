package com.discoverme.appv2.repository;

import com.discoverme.appv2.model.Hotel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Manuel
 */
@Repository
public interface HotelRepository extends CrudRepository<Hotel, Long> {

}