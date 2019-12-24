package com.discoverme.appv2.controller;

import com.discoverme.appv2.model.Email;
import com.discoverme.appv2.model.Login;
import com.discoverme.appv2.model.Usuario;
import com.discoverme.appv2.repository.EmailRepository;
import com.discoverme.appv2.repository.RolRepository;
import com.discoverme.appv2.repository.UsuarioRepository;
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
    private EmailRepository emailRepository;
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    @Autowired
    private RolRepository rolRepository;

    @GetMapping(value = "/")
    public ModelAndView index() {
        ModelAndView modelview = new ModelAndView("index");
        modelview.addObject("titulo", "Aumenta la fidelización en tu hotel");
        modelview.addObject("email", new Email());
        return modelview;
    }
    
    @GetMapping(value = "/inicio")
    public ModelAndView inicio(@RequestParam(value = "rol", required = false) String rol) {
        ModelAndView modelview = new ModelAndView("login");
        modelview.addObject("titulo", "Login");
        Usuario user = new Usuario();
        if (rol != null) {            
            user = usuarioRepository.findAllByRol(rolRepository.findAllByNombre(rol).get(0)).get(0);
        }
        Login login = new Login(user.getId(),user.getPassword());
        modelview.addObject("login", login);
        return modelview;
    }
    
    @PostMapping(value = "/login")
    public String login(@ModelAttribute("login") Login login,HttpSession session) {
        String redirect = null;
        Usuario usuario = usuarioRepository.findById(login.getUsuario()).get();
        if (usuario == null) {
            redirect = "redirect:/errorUser";
        } else if (!usuario.getPassword().equals(login.getPassword())) {
            redirect = "redirect:/errorPassword";
        } else {
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
        }
        return redirect;
    }
    
    @PostMapping(value = "/enviarEmail")
    public ModelAndView enviarEmail(@ModelAttribute("email") Email email) {
        ModelAndView modelview = new ModelAndView("email");
        modelview.addObject("email", email);
        emailRepository.save(email);
        return modelview;
    }
}
