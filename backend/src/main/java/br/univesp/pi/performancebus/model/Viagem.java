package br.univesp.pi.performancebus.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sun.istack.NotNull;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Viagem {

	@Id
	@GeneratedValue
	private Long id;

	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	private Usuario usuario;
	
	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	private Veiculo veiculo;
	
	@NotNull
	@ManyToOne(fetch = FetchType.LAZY)
	private Roteiro roteiro;

	@NotNull
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date partida;

	@NotNull
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date chegada;

}
