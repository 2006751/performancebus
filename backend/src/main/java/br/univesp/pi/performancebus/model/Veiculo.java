package br.univesp.pi.performancebus.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.Valid;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Veiculo {

	@Id
	@GeneratedValue
	private Long id;
	
	@NotBlank
	private String placa;
	
	@NotBlank
	private String identificacao;
	
	@NotBlank
	private String marca;
	
	@NotBlank
	private String modelo;
	
	@Min(1980)
	@Max(2100)
	private Integer anoDeFabricacao;

	@Valid
	@OneToMany(fetch = FetchType.LAZY)
	private Set<Evento> eventos = new HashSet<>();

	public void add(Evento evento) {
		eventos.add(evento);
	}
}
