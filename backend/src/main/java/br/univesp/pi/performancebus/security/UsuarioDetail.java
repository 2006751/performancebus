package br.univesp.pi.performancebus.security;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import br.univesp.pi.performancebus.model.Usuario;

public class UsuarioDetail implements UserDetails {
 
    private Usuario usuario;
     
    public UsuarioDetail(Usuario user) {
        this.usuario = user;
    }
 
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority = new SimpleGrantedAuthority(usuario.getCargo());
        return Arrays.asList(authority);
    }
 
    @Override
    public String getPassword() {
        return usuario.getPassword();
    }
 
    @Override
    public String getUsername() {
        return usuario.getUsername();
    }
 
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }
 
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }
 
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }
 
    @Override
    public boolean isEnabled() {
        return true;
    }
 

}
