package com.example.LocationApplication.Services;

import com.example.LocationApplication.Models.Location;

import java.util.List;

// this interface will contain all the needed functions or apis
public interface LocationService {

    Location saveLocation(Location location);
    Location updateLocation(Location location);
    void deleteLocation(Location location);
    Location getLocationById(int id);
    List<Location> getAllLocations();
}
