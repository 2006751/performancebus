package br.univesp.pi.performancebus.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
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

	@Min(1)
	@Max(999)
	private Integer tempoEsperado;

	@Min(1)
	@Max(999)
	private Float quilometragem;

}
