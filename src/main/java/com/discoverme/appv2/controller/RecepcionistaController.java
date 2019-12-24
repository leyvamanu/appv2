package com.discoverme.appv2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/recepcionista")
public class RecepcionistaController {

    @GetMapping(value = "/")
    public ModelAndView index() {
        ModelAndView modelview = new ModelAndView("recepcionista/index");
        modelview.addObject("titulo", "Inicio Recepcionista");
        return modelview;
    }

}
