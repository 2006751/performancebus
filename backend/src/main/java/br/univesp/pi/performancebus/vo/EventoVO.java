package br.univesp.pi.performancebus.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class EventoVO {

	private Long id;

	@NotBlank
	private String descricao;

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime dataHora;

	private Long usuario;

	private Long veiculo;

	private Long tipoEvento;

}
