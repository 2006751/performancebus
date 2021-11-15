package br.univesp.pi.performancebus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import br.univesp.pi.performancebus.model.Evento;
import br.univesp.pi.performancebus.repository.EventoRepository;
import br.univesp.pi.performancebus.repository.TipoEventoRepository;
import br.univesp.pi.performancebus.repository.UsuarioRepository;
import br.univesp.pi.performancebus.repository.VeiculoRepository;
import br.univesp.pi.performancebus.vo.EventoVO;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class EventoController {

	@Autowired
	EventoRepository repository;
	
	@Autowired
	UsuarioRepository usuarioRepository;
	
	@Autowired
	VeiculoRepository veiculoRepository;
	
	@Autowired
	TipoEventoRepository tipoEventoRepository;
	
	@PostMapping(value = "/evento/save", produces = { "application/json", "application/xml",
			"application/x-yaml" }, consumes = { "application/json", "application/xml", "application/x-yaml" })
	public ResponseEntity save(@RequestBody EventoVO evento) {
		
		try {
			Evento model = new Evento();
			model.setDataHora(evento.getDataHora());
			model.setDescricao(evento.getDescricao());
			model.setId(evento.getId());
			model.setTipoEvento(tipoEventoRepository.findById(evento.getTipoEvento()).get());
			model.setUsuario(usuarioRepository.findById(evento.getUsuario()).get());
			model.setVeiculo(veiculoRepository.findById(evento.getVeiculo()).get());
			repository.save(model);
			return ResponseEntity.ok(model);
			
		} catch (BadCredentialsException e) {
		    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
		}
	}
}
