package br.univesp.pi.performancebus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import br.univesp.pi.performancebus.model.Evento;
import br.univesp.pi.performancebus.repository.EventoRepository;
import br.univesp.pi.performancebus.repository.TipoEventoRepository;
import br.univesp.pi.performancebus.repository.UsuarioRepository;
import br.univesp.pi.performancebus.repository.VeiculoRepository;
import br.univesp.pi.performancebus.repository.dto.EventosPorTipo;
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
		
	@RequestMapping(method = RequestMethod.GET, value = "/eventos/portipo", produces = {"application/json"}, consumes = {"application/json"})
	public ResponseEntity eventosPorTipo(@Param("teste") String teste) {

		try {
			List<EventosPorTipo> eventosPorTipo = null;
			repository.countEventosPorTipo();
			return ResponseEntity.ok(eventosPorTipo);

		} catch (BadCredentialsException e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
		}
	}	
	
}
