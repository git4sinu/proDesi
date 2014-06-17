package com.desiEngg.model;

import com.desiEngg.webapp.form.BucketForm;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.appfuse.model.BucketData;
import org.appfuse.model.Role;
import org.appfuse.model.User;
import org.appfuse.service.UserExistsException;
import org.appfuse.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
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

    @Autowired
    UserManager userManager;


    public User getUser() {
        Object name = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (name instanceof User) {
            return (User) name;
        }
        return userManager.getUserByUsername(name.toString());
    }

    public void setUser(User user) {
        this.user = user;
    }

    public BucketData bucketData;

    public List<BucketData> bucketsList;

    public BucketData getBucketData() {
        return bucketData;
    }

    public void setBucketData(BucketData bucketData) {
        this.bucketData = bucketData;
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


    public User SaveUser(BucketForm bucketForm) throws UserExistsException {
        if (StringUtils.isNotEmpty(bucketForm.getEmail())) {
            user = userManager.getUserbyEmailid(bucketForm.getEmail());
            Random r = new Random(System.currentTimeMillis());
            int rNumber=(1 + r.nextInt(2)) * 10000 + r.nextInt(10000);
            if (user == null) {
                user = new User();
                user.setUsername(bucketForm.getFirstName()+rNumber);
            }
            user.setFirstName(bucketForm.getFirstName());
            user.setPassword(bucketForm.getPassword());
            user.setConfirmPassword(bucketForm.getConfirmPassword());
            user.setEmail(bucketForm.getEmail());
            user.setEnabled(true);
            user.setPhoneNumber(bucketForm.getPhoneNumber());
            user.getAddress().setAddress(bucketForm.getAddress());
            user=userManager.saveUser(user);
        }
        return user;
    }
}
