package br.univesp.pi.performancebus.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.univesp.pi.performancebus.model.Viagem;

@RepositoryRestResource(collectionResourceRel = "viagens", path = "viagem")
public interface ViagemRepository extends CrudRepository<Viagem, Long> {
}
