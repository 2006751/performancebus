package br.univesp.pi.performancebus.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Usuario {

	@Id
	@GeneratedValue
	private Long id;
	
	@NotBlank
	private String nome;
	
	@NotNull
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date dataNascimento;
	
	@NotBlank
	private String cargo;

}
