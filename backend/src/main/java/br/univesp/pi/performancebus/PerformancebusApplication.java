package br.univesp.pi.performancebus;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import br.univesp.pi.performancebus.model.Evento;
import br.univesp.pi.performancebus.model.Roteiro;
import br.univesp.pi.performancebus.model.Usuario;

@SpringBootApplication(scanBasePackages={"br.univesp.pi.performancebus.*"})
public class PerformancebusApplication  implements RepositoryRestConfigurer{
	
	public static void main(String[] args) {
		SpringApplication.run(PerformancebusApplication.class, args);
	}

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
    	
		cors.addMapping("/*").allowedOrigins("*").allowedMethods("GET", "POST", "PUT", "OPTIONS", "DELETE")
				.allowCredentials(false).maxAge(3600);

    	config.exposeIdsFor(Usuario.class);
        config.exposeIdsFor(Roteiro.class);
		config.exposeIdsFor(Evento.class);
    }
    
    
}
