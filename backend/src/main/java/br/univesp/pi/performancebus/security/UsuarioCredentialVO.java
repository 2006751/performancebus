package br.univesp.pi.performancebus.security;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode
public class UsuarioCredentialVO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String username;
	private String senha;
	

}
