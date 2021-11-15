package br.univesp.pi.performancebus.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Table(name = "permissao")
@Data
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
@EqualsAndHashCode
public class Permissao implements GrantedAuthority, Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "description")
	private String description;

	@Override
	public String getAuthority() {
		return this.description;
	}


}
