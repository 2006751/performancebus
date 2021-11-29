import React, {useState} from 'react';
import { useHistory} from 'react-router-dom';
import './styles.css';

import api from '../../services/api'

import logoImage from '../../assets/logo.svg'
import padlock from '../../assets/padlock.png'

export default function Login() {

    const [username, setUsername] = useState('');
    const [senha, setSenha] = useState('');

    const history = useHistory();

    async function login(e){
        e.preventDefault();

        const data = {
            username,
            senha,
        };

        try {
            const response = await api.post('login', data);

            localStorage.setItem('username', username);
            localStorage.setItem('nome', response.data.nome);
            localStorage.setItem('accessToken', response.data.token);

            history.push('/eventos')
        } catch (error) {
    	    alert("Login inválido!");
	    };
    };

	const style = {
      color: 'black',
      fontSize: 12,
      display: 'flex',
	  flexDirection: 'column'
    };

    return (
	    <div>
	        <div className="login-container">
	            <section className="form">
	                <img src={logoImage} alt="Erudio Logo"/>
	                <form onSubmit={login}>
	                    <h1>Login</h1>
	                    <input
	                        placeholder="usuário"
	                        value={username}
	                        onChange={e => setUsername(e.target.value)}
	                    />
	                    <input
	                        type="password" placeholder="senha"
	                        value={senha}
	                        onChange={e => setSenha(e.target.value)}
	                    />
	
	                    <button className="button" type="submit">Login</button>
	                </form>
	
	            </section>
	
	            <img src={padlock} alt="Login"/>
			</div>

	        <div className="text-container">
				<div style={style}>
					<header>
						Sobre nós
					</header>
					<section className="texto">
						A Auto Viação Mairiporã é uma empresa prestadora de serviços de transporte urbano de passageiros
						fundada em 2001 e que opera com mais de 17 linhas que atendem a população de Mairiporã. Os ônibus 
						são equipados com moderna tecnologia, como GPS e monitoramento por imagens, garantindo confiabilidade
						de informação e trazendo segurança e conforto aos clientes. 
					</section>
					<header>
						Recursos Humanos
					</header>
					<section className="texto">
						Profissionalismo sempre
						A Auto Viação Mairiporã desenvolve programas e treinamentos que visam contribuir para a capacitação
						e crescimento de seus colaboradores.
						Por meio de programas de treinamentos ministrados pela equipe de Educação, os profissionais conhecem
						novas tecnologias, atualizam conhecimentos e recebem informações que facilitam seu dia a dia.
					</section>
					<header>
						Trabalhe conosco
					</header>
					<section className="texto">
						A Auto Viação Mairiporã possui as melhores oportunidades do mercado! Deixe seu currículo conosco!
						Se você quer se candidatar para uma vaga, envie seu currículo para TB@viacaomairipora.com.br.
					</section>
				</div>
			</div>

        </div>



    )

}