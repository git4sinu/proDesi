package com.desiEngg.model;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.appfuse.model.Role;
import org.appfuse.model.User;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/7/14
 * Time: 7:20 PM
 * To change this template use File | Settings | File Templates.
 */
@Service
public class BaseModel {

    Log dlogger= LogFactory.getFactory().getInstance(BaseModel.class);

    public User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void login() {
        try {
            List<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
            Set<Role> roles = user.getRoles();
            for (Role role : roles) {
                auths.add(new GrantedAuthorityImpl(role.getName()));
            }
            Authentication auth = new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword(), auths);
            SecurityContext context = SecurityContextHolder.getContext();
            context.setAuthentication(auth);
        } catch (Exception e) {
            dlogger.error(e);
        }
    }

}
