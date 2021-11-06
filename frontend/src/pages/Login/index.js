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

    return (
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
    )

}