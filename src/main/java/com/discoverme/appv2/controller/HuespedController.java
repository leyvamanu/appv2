package com.discoverme.appv2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/huesped")
public class HuespedController {

    @GetMapping(value = "/")
    public ModelAndView index() {
        ModelAndView modelview = new ModelAndView("huesped/index");
        modelview.addObject("titulo", "Inicio Huesped");
        return modelview;
    }

}