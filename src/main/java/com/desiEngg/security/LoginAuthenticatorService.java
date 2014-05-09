package com.desiEngg.security;

import org.appfuse.model.User;
import org.appfuse.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.SaltSource;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.logging.Logger;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 4/28/14
 * Time: 5:53 PM
 * To change this template use File | Settings | File Templates.
 */
public class LoginAuthenticatorService implements UserDetailsService {
    protected static Logger logger = Logger.getLogger("service");
    private PasswordEncoder passwordEncoder;

    String password;

    @Qualifier("userManager")
    @Autowired
    UserManager userManager;

    @Autowired(required = false)
    private SaltSource saltSource;

    @Autowired
    public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }
    /**
     * Retrieves a user record containing the user's credentials and access.
     */
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException, DataAccessException {

        // Declare a null Spring User
        User user = null;

        try {
            user= userManager.getUserByUsername(username);
        } catch (Exception e) {
            logger.info("Error in retrieving user");
        }
        try {
            if (user == null) user = userManager.getUserbyEmailid(username);
        } catch (Exception e) {
            logger.info("Error in retrieving user");
            throw new UsernameNotFoundException("Error in retrieving user");
        }
        //user.setPassword(passwordEncoder.encodePassword(user.getPassword(),saltSource.getSalt(user)));
        // Return user to Spring for processing.
        // Take note we're not the one evaluating whether this user is authenticated or valid
        // We just merely retrieve a user that matches the specified username
        return user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
