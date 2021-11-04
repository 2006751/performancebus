package br.univesp.pi.performancebus.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.univesp.pi.performancebus.model.Permissao;

@RepositoryRestResource(collectionResourceRel = "permissoes", path = "permissao")
public interface PermissaoRepository extends JpaRepository<Permissao, Long> {

	Permissao findByDescription(final String description);
	
}
