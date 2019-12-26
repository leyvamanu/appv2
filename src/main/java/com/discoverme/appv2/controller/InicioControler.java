package com.discoverme.appv2.controller;

import com.discoverme.appv2.model.Email;
import com.discoverme.appv2.model.Usuario;
import com.discoverme.appv2.service.EmailService;
import com.discoverme.appv2.service.RolService;
import com.discoverme.appv2.service.UsuarioService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InicioControler {

    @Autowired
    private EmailService emailService;

    @Autowired
    private UsuarioService usuarioService;

    @Autowired
    private RolService rolService;

    @GetMapping(value = "/")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView modelview = new ModelAndView("index");
        modelview.addObject("titulo", "Aumenta la fidelización en tu hotel");
        modelview.addObject("email", new Email());
        return modelview;
    }

    @GetMapping(value = "/login")
    public ModelAndView login(@RequestParam(value = "rol", required = false) String rol) {
        ModelAndView modelview = new ModelAndView("login");
        modelview.addObject("titulo", "Login");
        Usuario user = new Usuario();
        if (rol != null) {
            user = usuarioService.findAllByRol(rolService.findAllByNombre(rol)).get(0);
        }
        modelview.addObject("username", user.getId());
        modelview.addObject("password", user.getPassword());
        return modelview;
    }

    @GetMapping(value = "/inicio")
    public String inicio(HttpSession session, HttpServletRequest request) {
        String redirect = null;
        Usuario usuario = usuarioService.findById(request.getRemoteUser());
        session.setAttribute("usuario", usuario);
        String rol = usuario.getRol().getNombre();
        switch (rol) {
            case "Director":
                redirect = "redirect:/director/";
                break;
            case "Recepcionista":
                redirect = "redirect:/recepcionista/";
                break;
            case "Camarero":
                redirect = "redirect:/camarero/";
                break;
            case "Colaborador":
                redirect = "redirect:/colaborador/";
                break;
            case "Huesped":
                redirect = "redirect:/huesped/";
        }
        return redirect;
    }

    @PostMapping(value = "/enviarEmail")
    public ModelAndView enviarEmail(@ModelAttribute("email") Email email) {
        ModelAndView modelview = new ModelAndView("email");
        modelview.addObject("email", email);
        emailService.save(email);
        return modelview;
    }
}
