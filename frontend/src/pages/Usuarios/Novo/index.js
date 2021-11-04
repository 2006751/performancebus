import React, {useState, useEffect} from 'react';
import { useHistory, Link, useParams } from 'react-router-dom';
import { FiArrowLeft } from 'react-icons/fi'

import api from '../../../services/api'

import './styles.css';

import logoImage from '../../../assets/logo.svg';

export default function NewUsuario(){

    const [id, setId] = useState(null);
    const [nome, setNome] = useState('');
    const [sobrenome, setSobrenome] = useState('');
    const [dataNascimento, setDataNascimento] = useState('');
    const [cargo, setCargo] = useState('');
    const [password, setPassword] = useState('');
    const [username, setUsername] = useState('');
    const [permissions, setPermissions] = useState('');

    const {usuarioId} = useParams();

    const nomeLocal   = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function loadUsuario() {
        try {
            const response = await api.get(`usuario/${usuarioId}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })

            setId(response.data.id);
            setNome(response.data.nome);
            setSobrenome(response.data.sobrenome);
            setDataNascimento(response.data.dataNascimento);
            setCargo(response.data.cargo);
            setUsername(response.data.username);
            setPassword(response.data.password);
            setPermissions(response.data.permissions);

        } catch (error) {
            alert('Erro recuperando usuario! Tente novamente.');
            history.push('/usuarios');
        }
    }

    useEffect(() => {
        if (usuarioId === '0') return;
        else loadUsuario();
    }, [usuarioId])

    async function saveOrUpdate(e){
        e.preventDefault();

        const data = {
            nome,
            sobrenome,
            dataNascimento,
            cargo,
            username,
            permissions,
			password,
        }

        try {
            if (usuarioId === '0') {

	            data.permissions =  [ "http://localhost:8080/permissao/3"];

				data.passwordEncoder = {}

                await api.post('usuario', data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`
                    }
                });
            } else {
                data.id = id;
                await api.put('usuario' + (data.id ? '/' + data.id : ''), data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`,
					    'Accept': 'application/json',
        				'Content-Type': 'application/json'                    
					}
                });
            }

            history.push('/usuarios');
        } catch (err) {
			console.log(err);
            alert('Erro ao salvar Usuario! Tente novamente')
        }
    }

    return (
        <div className="new-book-container">
            <div className="content">
                <section className="form">
                    <img src={logoImage} alt="Performance Bus"/>
                    <h1>{usuarioId === '0' ? 'Novo' : 'Alterar'} Usuario</h1>
                    <p>Entre com os dados do usuário e clique em {usuarioId === '0' ? "'Novo'" : "'Alterar'"}!</p>
                    <Link className="back-link" to="/usuarios">
                        <FiArrowLeft size={16} color="#251fc5"/>
                        Voltar ao usuário
                    </Link>
                </section>
                <form onSubmit={saveOrUpdate}>
                    <input
                        placeholder="Nome"
                        value={nome}
                        onChange={e => setNome(e.target.value)}
                    />

                    <input
                        placeholder="Sobrenome"
                        value={sobrenome}
                        onChange={e => setSobrenome(e.target.value)}
                    />

                    <input
                        placeholder="Usuário"
                        value={username}
                        onChange={e => setUsername(e.target.value)}
                    />

                    <input
                        placeholder="dataNascimento"
                        value={dataNascimento}
                        onChange={e => setDataNascimento(e.target.value)}
                    />

                    <input
                        placeholder="Cargo"
                        value={cargo}
                        onChange={e => setCargo(e.target.value)}
                    />

                    <input
 						type="password"
                        placeholder="Senha"
                        value={password}
                        onChange={e => setPassword(e.target.value)}
                    />

                    <input type = "hidden"
                        placeholder="Permissions"
                        value={permissions}
                        onChange={e => setPermissions(e.target.value)}
                    />

                    <button className="button" type="submit">{usuarioId === '0' ? 'Novo' : 'Alterar'}</button>
                </form>
            </div>
        </div>
    );
}