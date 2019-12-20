package com.springbootweb;

import org.aspectj.weaver.ast.And;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

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

	@Bean
	public AuthenticationSuccessHandler myAuthenticationSuccessHandler() {
		return new MySimpleUrlAuthenticationSuccessHandler();
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests()
		
		
		.requestMatchers(PathRequest.toStaticResources().atCommonLocations())
				.permitAll().antMatchers("/").permitAll().antMatchers("/verify").permitAll()
				.antMatchers("/welcomeAdmin").hasAuthority("admin")
				.antMatchers("/getDetail").hasAuthority("admin")
				.antMatchers("/delUser").hasAuthority("admin")
				.antMatchers("/delTodo").hasAuthority("user")
				.antMatchers("/welcomeNew").hasAuthority("user")
				.antMatchers("/verifyUserName").permitAll().antMatchers("/addTodo").permitAll()
				.antMatchers("/verifyUserEmail").permitAll().antMatchers("/login").permitAll().antMatchers("/newUser")
				.permitAll().antMatchers("/forgetCredentials").permitAll().antMatchers("/restoreCredentials")
				.permitAll().anyRequest().authenticated().and().csrf().disable().formLogin()
				.loginProcessingUrl("/j_spring_security_check").loginPage("/login")
				// .defaultSuccessUrl("/loginCredentials")
				//.successHandler((req, res, auth) -> { // Success handler invoked after successful authentication
					
					//res.sendRedirect("/loginCredentials");
				//})
				.successHandler(myAuthenticationSuccessHandler())
				.failureHandler((req, res, auth) -> {
					res.sendRedirect("/login?error=true");
				}).usernameParameter("name")//
				.passwordParameter("password")

				.and().logout().logoutUrl("/lgot").logoutSuccessUrl("/performLogOut");

		// .httpBasic(); loginCredentials
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		auth.inMemoryAuthentication().withUser("admin").password(bCryptPasswordEncoder.encode("pass")).roles("admin");
		// Setting Service to find User in the database.
		// And Setting PassswordEncoder
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());

	}
}