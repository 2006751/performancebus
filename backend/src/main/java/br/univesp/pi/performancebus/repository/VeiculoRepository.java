package br.univesp.pi.performancebus.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.univesp.pi.performancebus.model.Veiculo;

@RepositoryRestResource(collectionResourceRel = "veiculos", path = "veiculo")
public interface VeiculoRepository extends CrudRepository<Veiculo, Long> {
}
