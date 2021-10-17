package br.univesp.pi.performancebus.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Evento {

	@Id
	@GeneratedValue
	private Long id;

	@NotBlank
	private String descricao;

	@NotNull
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date data;

	@NotNull
	@Valid
	@ManyToOne(fetch = FetchType.LAZY)
	private Usuario usuario;
	
	@NotNull
	@Valid
	@ManyToOne(fetch = FetchType.LAZY)
	private Veiculo veiculo;
	
	@NotNull
	@Valid
	@ManyToOne(fetch = FetchType.LAZY)
	private TipoEvento tipoEvento;
	
}
