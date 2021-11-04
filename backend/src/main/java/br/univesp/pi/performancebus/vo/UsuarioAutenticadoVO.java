package br.univesp.pi.performancebus.vo;

import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UsuarioAutenticadoVO {

	@NotBlank
	private Long id;

	@NotBlank
	private String nome;

	@NotBlank
	private String cargo;

	private String token;
	
}

