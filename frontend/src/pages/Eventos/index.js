import React, { useState, useEffect } from 'react';
import { Link, useHistory } from 'react-router-dom';
import { FiPower, FiEdit, FiTrash2 } from 'react-icons/fi'

import SettingsMenu from '../Menu/SettingsMenu';

import api from '../../services/api'

import logoImage from '../../assets/logo.svg'

export default function Eventos(){

    const [eventos, setEventos] = useState([]);
    const [page, setPage] = useState(0);

    const [usuarios, setUsuarios] = useState([]);
    const nome = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

	function load(service, campo) {
        var   valorConsulta;
		const data =  api.get(service.href, {
			headers: {
				Authorization: `Bearer ${accessToken}`
			}
		}).then((response) => { 
            console.log('ee')
            const datas = response.data;//.map(obj => [obj.id, obj[campo]]);
            //this.setUsuarios({ datas});
        });
	}

    async function editEvento(id) {
        try {
            history.push(`evento/new/${id}`)
        } catch (error) {
            alert('Edit failed! Try again.');
        }
    }

    async function deleteEvento(id) {
        try {
            await api.delete(`evento/${id}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })

            setEventos(eventos.filter(evento => evento.id !== id))
        } catch (err) {
            alert('Delete failed! Try again.');
        }
    }

    async function fetchMoreEventos() {
        const response = await api.get('evento', {
            headers: {
                Authorization: `Bearer ${accessToken}`
            },
            params: {
                page: page,
                limit: 1,
                direction: 'asc'
            }
        });

        console.log(response.data._embedded.eventos);
        setEventos([ ...eventos, ...response.data._embedded.eventos])
        setPage(page + 1);
    }

    useEffect(() => {
        fetchMoreEventos();
    }, [])
    
    return (
        <div className="book-container">
			<SettingsMenu />

            <header>
                <img src={logoImage} alt="PerformanceBus"/>
                <span>Bem-Vindo, <strong>{nome.toUpperCase()}</strong>!</span>
                <Link className="button" to="evento/new/0">Criar novo Evento</Link>
            </header>

            <h1>Eventos</h1>
            <ul>
                {eventos.map(evento => (
                    <li key={evento.id}>
                        <strong>Data:</strong> 
                        <p>{evento.dataHora}</p>
                        <strong>Descrição:</strong>
                        <p>{evento.descricao}</p>
                        
                        <button onClick={() => editEvento(evento.id)} type="button">
                            <FiEdit size={20} color="#251FC5"/>
                        </button>
                        
                        <button onClick={() => deleteEvento(evento.id)} type="button">
                            <FiTrash2 size={20} color="#251FC5"/>
                        </button>
                    </li>
                ))}
            </ul>

            <button className="button" onClick={fetchMoreEventos} type="button">Mais ...</button>
        </div>
    );
}