package br.univesp.pi.performancebus.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import br.univesp.pi.performancebus.model.Usuario;
import br.univesp.pi.performancebus.repository.UsuarioRepository;
import br.univesp.pi.performancebus.security.UsuarioCredentialVO;
import br.univesp.pi.performancebus.security.jwt.JwtTokenProvider;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class LoginController {

	@Autowired
	UsuarioRepository usuarioRepository;
	
	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	JwtTokenProvider tokenProvider;
	
	@PostMapping(value = "/login", produces = { "application/json", "application/xml",
			"application/x-yaml" }, consumes = { "application/json", "application/xml", "application/x-yaml" })
	public ResponseEntity login(@RequestBody UsuarioCredentialVO usuarioEnviado) {
		
		try {
			var username = usuarioEnviado.getUsername();
			var pasword = usuarioEnviado.getSenha();
			
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, pasword));
			
			Usuario user = usuarioRepository.findByUsername(username);
			
			var token = "";
			
			if (user != null) {
				token = tokenProvider.createToken(username, user.getRoles());
			} else {
				throw new UsernameNotFoundException("Username " + username + " not found!");
			}
			
			Map<Object, Object> model = new HashMap<>();
			model.put("username", username);
			model.put("nome", user.getNome());
			model.put("token", token);
			return ResponseEntity.ok(model);
			
		} catch (BadCredentialsException e) {
		    return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(e.getMessage());
		}
	}
}
