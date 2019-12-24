package com.discoverme.appv2.service.impl;

import com.discoverme.appv2.model.Email;
import com.discoverme.appv2.repository.EmailRepository;
import com.discoverme.appv2.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
    
    @Autowired
    EmailRepository emailRepository;

    @Override
    public void save(Email email) {
        Email e = emailRepository.save(email);
    }
    
}
