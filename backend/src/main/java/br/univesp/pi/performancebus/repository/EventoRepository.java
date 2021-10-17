package br.univesp.pi.performancebus.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import br.univesp.pi.performancebus.model.Evento;

@RepositoryRestResource(collectionResourceRel = "eventos", path = "evento")
public interface EventoRepository extends JpaRepository<Evento, Long> {

	@RestResource(rel = "veiculo", path = "veiculo")
	Page<Evento> findByVeiculo(@Param("veiculo") String veiculo, Pageable page);	
	
	@RestResource(rel = "descricao", path = "descricao")
	Page<Evento> findAllByDescricaoIgnoreCaseLike(@Param("descricao") String descricao, Pageable page);
	
}
