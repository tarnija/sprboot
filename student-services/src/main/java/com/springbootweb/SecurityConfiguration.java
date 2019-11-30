package com.springbootweb;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.springbootweb.service.UserDetailsServiceImpl;




@Configuration  
public class SecurityConfiguration extends WebSecurityConfigurerAdapter { 
	@Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }
	@Autowired
    private UserDetailsServiceImpl userDetailsService;
    @Override  
    public void configure(HttpSecurity http) throws Exception {  
        http  .csrf().disable()
            .authorizeRequests()
            .requestMatchers(PathRequest.toStaticResources().atCommonLocations()).permitAll()
            .antMatchers("/verify").permitAll()
            .antMatchers("/").permitAll()
            .antMatchers("/login").permitAll()
            .antMatchers("/newUser").permitAll()  
            .antMatchers("/forgetCredentials").permitAll()
            .antMatchers("/restoreCredentials").permitAll()
            .anyRequest().authenticated().and().csrf().disable().formLogin().loginProcessingUrl("/j_spring_security_check")
            .loginPage("/login")
            //.defaultSuccessUrl("/loginCredentials")
            .successHandler((req,res,auth)->{    //Success handler invoked after successful authentication
                
                            res.sendRedirect("/loginCredentials"); 
             })
            .failureHandler((req,res,auth)->{
            	res.sendRedirect("/login?error=true");
            })
            .usernameParameter("name")//
            .passwordParameter("password")
            
            
        .and().logout().logoutUrl("/lgot").logoutSuccessUrl("/performLogOut");
         //   .httpBasic();  loginCredentials
    }  
	/*
	 * @Override public void configure(WebSecurity web) throws Exception {
	 * web.ignoring().antMatchers("/resources/**").anyRequest(); }
	 */
   
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
 
        // Setting Service to find User in the database.
        // And Setting PassswordEncoder
    	auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
 
    }
}