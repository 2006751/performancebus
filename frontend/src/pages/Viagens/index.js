import React, { useState, useEffect } from 'react';
import { Link, useHistory } from 'react-router-dom';
import { FiPower, FiEdit, FiTrash2 } from 'react-icons/fi'
import SettingsMenu from '../Menu/SettingsMenu';

import api from '../../services/api'

import './styles.css';

import logoImage from '../../assets/logo.svg'

export default function Viagens(){

    const [viagens, setViagens] = useState([]);
    const [page, setPage] = useState(1);
    
    const nome = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

      async function editViagem(id) {
        try {
            history.push('viagem/new/${id}')
        } catch (error) {
            alert('Confirmação falhou. Tente novamente.');
        }
    }
    async function deleteViagem(id) {
        try {
            await api.delete('viagem/${id}', {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })

            setViagens(viagens.filter(viagem => viagem.id !== id))
        } catch (err) {
            alert('Delete failed! Try again.');
        }
    }

    async function fetchMoreViagens() {
        const response = await api.get('viagem', {
            headers: {
                Authorization: `Bearer ${accessToken}`
            },
            params: {
                page: page,
                limit: 4,
                direction: 'asc'
            }
        });

        setViagens([ ...viagens, ...response.data._embedded.viagens])
        setPage(page + 1);
    }

    useEffect(() => {
        fetchMoreViagens();
    }, [])
    
    return (
        <div className="book-container">
			<SettingsMenu />
            <header>
                <img src={logoImage} alt="PerformanceBus"/>
                <span>Bem-vindo, <strong>{nome.toUpperCase()}</strong>!</span>
                <Link className="button" to="viagem/new/0">Adiciona Viagem</Link>
            </header>

            <h1>Veículos</h1>
            <ul>
                {viagens.map(viagem => (
                    <li key={viagem.id}>
                        <strong>Motorista:</strong>
                        <p>{viagem.usuario.nome}</p>
                        <strong>Veículo:</strong>
                        <p>{viagem.veiculo.identificacao}</p>
                        <strong>Roteiro:</strong>
                        <p>{viagem.roteiro.localPartida} - {viagem.roteiro.localChegada}</p>
                        <strong>Partida:</strong>
                        <p>{viagem.partida}</p>
                        <strong>Chegada:</strong>
                        <p>{viagem.chegada}</p>
                        
                        <button onClick={() => editViagem(viagem.id)} type="button">
                            <FiEdit size={20} color="#251FC5"/>
                        </button>
                        
                        <button onClick={() => deleteViagem(viagem.id)} type="button">
                            <FiTrash2 size={20} color="#251FC5"/>
                        </button>
                    </li>
                ))}
            </ul>

            <button className="button" onClick={fetchMoreViagens} type="button">Mais...</button>
        </div>
    );
}