package com.discoverme.appv2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * Controlador para los colaboradores
 * @author leyva
 */
@Controller
@RequestMapping("/colaborador")
public class ColaboradorController {

    @GetMapping(value = "/")
    public ModelAndView index() {
        ModelAndView modelview = new ModelAndView("colaborador/index");
        modelview.addObject("titulo", "Inicio Colaborador");
        return modelview;
    }

}