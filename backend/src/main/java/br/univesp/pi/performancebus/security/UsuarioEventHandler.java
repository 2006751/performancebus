package br.univesp.pi.performancebus.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.core.annotation.HandleBeforeCreate;
import org.springframework.data.rest.core.annotation.HandleBeforeSave;
import org.springframework.data.rest.core.annotation.RepositoryEventHandler;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import br.univesp.pi.performancebus.model.Usuario;
import br.univesp.pi.performancebus.repository.UsuarioRepository;

@Component
@RepositoryEventHandler(Usuario.class)
public class UsuarioEventHandler {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private UsuarioRepository userRepository;

	@HandleBeforeCreate
	public void handleUserCreate(Usuario user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
	}

	@HandleBeforeSave
	public void handleUserUpdate(Usuario user) {
		if (user.getPassword() == null || user.getPassword().equals("")) {
			Usuario storedUser = userRepository.findById(user.getId()).get();
			user.setPassword(storedUser.getPassword());
		} else {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
		}
	}
}