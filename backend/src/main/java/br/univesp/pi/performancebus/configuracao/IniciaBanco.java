package br.univesp.pi.performancebus.configuracao;

import java.text.MessageFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import br.univesp.pi.performancebus.model.Permissao;
import br.univesp.pi.performancebus.model.TipoEvento;
import br.univesp.pi.performancebus.model.Usuario;
import br.univesp.pi.performancebus.repository.PermissaoRepository;
import br.univesp.pi.performancebus.repository.TipoEventoRepository;
import br.univesp.pi.performancebus.repository.UsuarioRepository;
import br.univesp.pi.performancebus.security.UsuarioEventHandler;
import lombok.extern.slf4j.Slf4j;

@Configuration
@Slf4j
public class IniciaBanco {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@Autowired
	private PermissaoRepository permissaoRepository;
	
	@Autowired
	private TipoEventoRepository tipoEventoRepository;
	
	@Autowired
	private UsuarioEventHandler usuarioEventHandler;

    @Bean
    CommandLineRunner runner() {
    	
        return args -> {
			if(StreamSupport.stream(permissaoRepository.findAll().spliterator(), false).collect(Collectors.toList()).size() == 0) {
				var permissao1 = new Permissao();
				permissao1.setDescription("ADMIN");
				var permissao2 = new Permissao();
				permissao2.setDescription("MANAGER");
				var permissao3 = new Permissao();
				permissao3.setDescription("COMMON_USER");
				
				permissaoRepository.save(permissao1);
				permissaoRepository.save(permissao2);
				permissaoRepository.save(permissao3);

				log.info("Permissões inciais criadas.");
			}
	
			if(StreamSupport.stream(usuarioRepository.findAll().spliterator(), false).collect(Collectors.toList()).size() == 0) {
				var permissao = permissaoRepository.findByDescription("ADMIN");
				var usuario = new Usuario();
				usuario.setNome("Admin");
				usuario.setSobrenome("PerformanceBus");
				usuario.setDataNascimento(new Date());
				usuario.setCargo("Administrador");
				usuario.setPassword("admin123");
				usuario.setEnabled(true);
				usuario.setUsername("admin");
				usuario.setPermissions(Arrays.asList(permissao));
				usuarioEventHandler.handleUserCreate(usuario);
				usuarioRepository.save(usuario);
				log.info("Usuário admin inicial criado.");
			}
			
			Arrays.asList("Limpeza", "Manutenção Preventiva", "Manutenção Corretiva", "Quebra em Viagem", "Acidente")
				.forEach(descricao -> {
					if(!tipoEventoRepository.findByDescricao(descricao).isPresent()) {
						var tipoEvento = new TipoEvento();
						tipoEvento.setDescricao(descricao);
						tipoEventoRepository.save(tipoEvento);
						log.info(MessageFormat.format("Evento ''{0}'' criado.", descricao));
					}
				});
        
        };		
	}

}
