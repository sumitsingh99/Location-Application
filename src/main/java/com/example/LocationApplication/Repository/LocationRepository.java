package com.example.LocationApplication.Repository;

import com.example.LocationApplication.Models.Location;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

//Data Access Layer - DAO
public interface LocationRepository extends JpaRepository<Location, Integer> {
}
