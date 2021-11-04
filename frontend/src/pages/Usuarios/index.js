import React, { useState, useEffect } from 'react';
import { Link, useHistory } from 'react-router-dom';
import { FiPower, FiEdit, FiTrash2 } from 'react-icons/fi'
import SettingsMenu from '../Menu/SettingsMenu';

import api from '../../services/api'

import './styles.css';

import logoImage from '../../assets/logo.svg'

export default function Usuarios(){

    const [usuarios, setUsuarios] = useState([]);
    const [page, setPage] = useState(1);
    
    const nome = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function editUsuario(id) {
        try {
            history.push(`usuario/new/${id}`)
        } catch (error) {
            alert('Edit failed! Try again.');
        }
    }
    async function deleteUsuario(id) {
        try {
            await api.delete(`usuario/${id}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })

            setUsuarios(usuarios.filter(usuario => usuario.id !== id))
        } catch (err) {
            alert('Delete failed! Try again.');
        }
    }

    async function fetchMoreUsuarios() {
        const response = await api.get('usuario', {
            headers: {
                Authorization: `Bearer ${accessToken}`
            },
            params: {
                page: page,
                limit: 4,
                direction: 'asc'
            }
        });

        setUsuarios([ ...usuarios, ...response.data._embedded.usuarios])
        setPage(page + 1);
    }

    useEffect(() => {
        fetchMoreUsuarios();
    }, [])
    
    return (
        <div className="book-container">
			<SettingsMenu />
            <header>
                <img src={logoImage} alt="PerformanceBus"/>
                <span>Bem-Vindo, <strong>{nome.toUpperCase()}</strong>!</span>
                <Link className="button" to="usuario/new/0">Criar novo Usuario</Link>
            </header>

            <h1>Usuarios</h1>
            <ul>
                {usuarios.map(usuario => (
                    <li key={usuario.id}>
                        <strong>Nome:</strong>
                        <p>{usuario.nome}</p>
                        <strong>Sobrenome:</strong>
                        <p>{usuario.sobrenome}</p>
                        <strong>Cargo:</strong>
                        <p>{usuario.cargo}</p>
                        <strong>Data de Nascimento:</strong>
                        <p>{usuario.dataNascimento}</p>
                        
                        <button onClick={() => editUsuario(usuario.id)} type="button">
                            <FiEdit size={20} color="#251FC5"/>
                        </button>
                        
                        <button onClick={() => deleteUsuario(usuario.id)} type="button">
                            <FiTrash2 size={20} color="#251FC5"/>
                        </button>
                    </li>
                ))}
            </ul>

            <button className="button" onClick={fetchMoreUsuarios} type="button">Mais ...</button>
        </div>
    );
}