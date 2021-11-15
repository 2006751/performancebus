package br.univesp.pi.performancebus.model;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
public class Evento implements Serializable {

	@Id
	@GeneratedValue
	private Long id;

	@NotNull
	private String descricao;

	@NotNull
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime dataHora;

	@Valid
	@ManyToOne(fetch = FetchType.LAZY)
	private Usuario usuario;
	
	@Valid
	@ManyToOne(fetch = FetchType.LAZY)
	private Veiculo veiculo;
	
	@Valid
	@ManyToOne(fetch = FetchType.LAZY)
	private TipoEvento tipoEvento;
	
}
