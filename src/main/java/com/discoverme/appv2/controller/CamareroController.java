package com.discoverme.appv2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/camarero")
public class CamareroController {
    
    @GetMapping(value = "/")
    public ModelAndView index() {
        ModelAndView modelview = new ModelAndView("camarero/index");
        modelview.addObject("titulo", "Inicio Camarero");
        return modelview;
    }

}