import React, { useState, useEffect } from 'react';
import { Link, useHistory } from 'react-router-dom';
import { FiPower, FiEdit, FiTrash2 } from 'react-icons/fi'
import SettingsMenu from '../Menu/SettingsMenu';

import api from '../../services/api'

import './styles.css';

import logoImage from '../../assets/logo.svg'

export default function Roteiros(){

    const [roteiros, setRoteiros] = useState([]);
    const [page, setPage] = useState(1);
    
    const nome = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function editRoteiro(id) {
        try {
            history.push(`roteiro/new/${id}`)
        } catch (error) {
            alert('Edit failed! Try again.');
        }
    }
    async function deleteRoteiro(id) {
        try {
            await api.delete(`roteiro/${id}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })

            setRoteiros(roteiros.filter(roteiro => roteiro.id !== id))
        } catch (err) {
            alert('Delete failed! Try again.');
        }
    }

    async function fetchMoreRoteiros() {
        const response = await api.get('roteiro', {
            headers: {
                Authorization: `Bearer ${accessToken}`
            },
            params: {
                page: page,
                limit: 4,
                direction: 'asc'
            }
        });

        setRoteiros([ ...roteiros, ...response.data._embedded.roteiros])
        setPage(page + 1);
    }

    useEffect(() => {
        fetchMoreRoteiros();
    }, [])
    
    return (
        <div className="book-container">
			<SettingsMenu />
            <header>
                <img src={logoImage} alt="PerformanceBus"/>
                <span>Bem-Vindo, <strong>{nome.toUpperCase()}</strong>!</span>
                <Link className="button" to="roteiro/new/0">Criar novo Roteiro</Link>
            </header>

            <h1>Roteiros</h1>
            <ul>
                {roteiros.map(roteiro => (
                    <li key={roteiro.id}>
                        <strong>Local de Partida:</strong>
                        <p>{roteiro.localPartida}</p>
                        <strong>Local de Chegada:</strong>
                        <p>{roteiro.localChegada}</p>
                        <strong>Paradas:</strong>
                        <p>{roteiro.quantidadeParadas}</p>
                        <strong>Tempo esperado:</strong>
                        <p>{roteiro.tempoEsperado}</p>
                        <strong>Quilometragem:</strong>
                        <p>{roteiro.quilometragem}</p>
                        
                        <button onClick={() => editRoteiro(roteiro.id)} type="button">
                            <FiEdit size={20} color="#251FC5"/>
                        </button>
                        
                        <button onClick={() => deleteRoteiro(roteiro.id)} type="button">
                            <FiTrash2 size={20} color="#251FC5"/>
                        </button>
                    </li>
                ))}
            </ul>

            <button className="button" onClick={fetchMoreRoteiros} type="button">Mais ...</button>
        </div>
    );
}