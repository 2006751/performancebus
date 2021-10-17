package br.univesp.pi.performancebus.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.univesp.pi.performancebus.model.Roteiro;

@RepositoryRestResource(collectionResourceRel = "roteiros", path = "roteiro")
public interface RoteiroRepository extends CrudRepository<Roteiro, Long> {
}
