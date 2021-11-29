package br.univesp.pi.performancebus.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import br.univesp.pi.performancebus.model.Evento;
import br.univesp.pi.performancebus.repository.dto.EventosPorTipo;

@RepositoryRestResource(collectionResourceRel = "eventos", path = "evento")
public interface EventoRepository extends JpaRepository<Evento, Long> {

	@RestResource(rel = "veiculo", path = "veiculo")
	Page<Evento> findByVeiculo(@Param("veiculo") String veiculo, Pageable page);	
	
	@RestResource(rel = "descricao", path = "descricao")
	Page<Evento> findAllByDescricaoIgnoreCaseLike(@Param("descricao") String descricao, Pageable page);
	
	@RestResource(rel = "eventosportipo", path = "eventosportipo")
	@Query(value = "SELECT t.descricao AS descricao, COUNT(e) AS total FROM Evento AS e JOIN e.tipoEvento AS t GROUP BY e.tipoEvento")
	Object[] countEventosPorTipo();
	
}
