package br.univesp.pi.performancebus.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Roteiro {

	@Id
	@GeneratedValue
	private Long id;

	@NotBlank
	private String localPartida;

	@NotBlank
	private String localChegada;

	@NotBlank
	private String quantidadeParadas;

	@NotBlank
	private Integer tempoEsperado;

	@NotBlank
	private Float quilometragem;

}
