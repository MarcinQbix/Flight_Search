package pl.sda.flightsearch.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("dorota")
                .password("{noop}d")
                .roles("USER", "ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/flightList","/css/**", "/js/**","/images/**","/register").permitAll()

                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .permitAll()
        .and()
        .logout()
        .logoutSuccessUrl("/flightList")
                .permitAll();

        http.csrf().disable();
    }

//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//                .authorizeRequests()
//                .antMatchers("/", "/webapp/styles/login.css").permitAll()
//                //.anyRequest().authenticated()
//                .and()
//                .formLogin()
//                .loginPage("/loginForm")
//                .permitAll()
//                .and()
//                .logout()
//                .logoutUrl("/myLogout")
//                .logoutSuccessUrl("/")
//                .permitAll();
//
//        http.csrf().disable();
//
//    }


    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**")
                .antMatchers("/webjars/**")
                .antMatchers("/webapp/**");

    }
}

