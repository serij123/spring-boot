package com.ssmelnikov.demo.config.auth;

import com.ssmelnikov.demo.entity.User;
import com.ssmelnikov.demo.items.UserSecDetails;
import com.ssmelnikov.demo.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component
public class ChatUserDetailsService implements UserDetailsService {
    @Autowired
    private UserRepository userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByLogin(username);
        if(user == null) {
            throw new UsernameNotFoundException(username);
        } else {
            return new UserSecDetails(user);
        }
    }
}
