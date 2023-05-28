package com.example.LocationApplication.Controllers;

import com.example.LocationApplication.Models.Location;
import com.example.LocationApplication.Services.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LocationController {

    @Autowired
    LocationService service;
    @RequestMapping("/createLocation")
    public String show(){

        return "createLocation";
    }

    //to handle the save button functionality
    //ModelAttribute - to handle the request
    //ModelMap to handle the response
    @RequestMapping("/saveLoc")
    public String saveLocation(@ModelAttribute("location")Location location, ModelMap modelMap){
        Location savedLocation = service.saveLocation(location); // to send saved location id to UI
        String msg = "Location saved with id - "+savedLocation.getId();
        modelMap.addAttribute("msg",msg);
        return "createLocation";
    }

    //to handle view ALl Locations
    @RequestMapping("/displayLocations")
    public String displayLocations(ModelMap modelMap){
        List<Location> locations = service.getAllLocations();
        modelMap.addAttribute("locations",locations);
        return "displayLocations";
    }

    //to delete location
    @RequestMapping("/deleteLocation")
    public String deleteLocation(@RequestParam("id") int id,ModelMap modelMap){
        Location location = service.getLocationById(id);
        service.deleteLocation(location);
        List<Location>locations = service.getAllLocations();
        modelMap.addAttribute("locations",locations);
        return "displayLocations";
    }

    //to handle edit
    @RequestMapping("/updateLocation")
    public String updateLocation(@RequestParam("id") int id,ModelMap modelMap){
        Location location = service.getLocationById(id);
        modelMap.addAttribute("location",location);
        return "updateLocation";
    }

    @RequestMapping("/updateLoc")
    public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelMap){
        service.updateLocation(location);
        List<Location> locations = service.getAllLocations();
        modelMap.addAttribute("locations",locations);
        return "displayLocations";
    }
}
