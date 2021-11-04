package br.univesp.pi.performancebus.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import br.univesp.pi.performancebus.model.Usuario;

@RepositoryRestResource(collectionResourceRel = "usuarios", path = "usuario")
public interface UsuarioRepository extends CrudRepository<Usuario, Long> {

    @Query("SELECT u FROM Usuario u WHERE u.username = :username")
    public Usuario findByUsername(@Param("username") String username);

}
