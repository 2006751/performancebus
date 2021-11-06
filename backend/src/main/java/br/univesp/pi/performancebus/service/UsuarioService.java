package br.univesp.pi.performancebus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.univesp.pi.performancebus.repository.UsuarioRepository;

@Service
public class UsuarioService implements UserDetailsService {
	
	@Autowired
	UsuarioRepository repository;
	
	public UsuarioService(UsuarioRepository repository) {
		this.repository = repository;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		var usuario = repository.findByUsername(username);
		if (usuario != null) {
			return usuario;
		} else {
			throw new UsernameNotFoundException("Usuário " + username + " não encontrado.");
		}
		
	}
		
}