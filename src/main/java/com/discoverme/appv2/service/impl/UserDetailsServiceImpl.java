package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.model.Usuario;
import com.discoverme.appv2.repository.UsuarioRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    UsuarioRepository usuarioRepository;

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException {
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@: "+string);
        Usuario appUser = usuarioRepository.findById(string).get();
        List grantList = new ArrayList();
        GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(appUser.getRol().getNombre());
        grantList.add(grantedAuthority);
        System.out.println("ROL: "+grantList);
        UserDetails user = (UserDetails) new User(appUser.getId(), appUser.getPassword(), grantList);
        return user;
    }

}
