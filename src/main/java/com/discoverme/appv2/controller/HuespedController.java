package com.discoverme.appv2.controller;

import com.discoverme.appv2.model.Tipo;
import com.discoverme.appv2.model.Usuario;
import com.discoverme.appv2.service.PerfilService;
import com.discoverme.appv2.service.TipoService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/huesped")
public class HuespedController {

    @Autowired
    TipoService tipoService;

    @Autowired
    PerfilService perfilService;

    @GetMapping(value = "/")
    public ModelAndView index(HttpSession session) {
        ModelAndView modelview = new ModelAndView("huesped/index");
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        modelview.addObject("tipos", usuario.getPerfil().getTipos());
        return modelview;
    }

}
