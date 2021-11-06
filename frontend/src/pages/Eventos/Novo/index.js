import React, {useState, useEffect} from 'react';
import { useHistory, Link, useParams } from 'react-router-dom';
import { FiArrowLeft } from 'react-icons/fi'

import api from '../../../services/api'

import './styles.css';

import logoImage from '../../../assets/logo.svg';

export default function NewEvento(){

    const [id, setId] = useState(null);
    const [data, setData] = useState('');
    const [usuario, setUsuario] = useState('');
    const [veiculo, setVeiculo] = useState('');
    const [tipoEvento, setTipoEvento] = useState('');
    const [descricao, setDescricao] = useState('');

    const {eventoId} = useParams();

    const nomeLocal = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function loadEvento() {
        try {
            const response = await api.get(`evento/${eventoId}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })
            let adjustedDate = response.data.launchDate.split("T", 10)[0];

            setId(response.data.id);
            setData(response.data.data);
            setUsuario(response.data.usuario);
            setVeiculo(response.data.veiculo);
            setTipoEvento(response.data.tipoEvento);
            setDescricao(response.data.descricao);

        } catch (error) {
            alert('Erro recuperando evento! Tente novamente.');
            history.push('/eventos');
        }
    }

    useEffect(() => {
        if (eventoId === '0') return;
        else loadEvento();
    }, [eventoId])

    async function saveOrUpdate(e){
        e.preventDefault();

        const data = {
			data,
			usuario,
			veiculo,
			tipoEvento,
            descricao,
        }

        try {
            if (eventoId === '0') {
                await api.post('evento', data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`
                    }
                });
            } else {
                data.id = id;
                await api.put('evento', data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`
                    }
                });
            }

            history.push('/eventos');
        } catch (err) {
            alert('Erro ao salvar Evento! Tente novamente')
        }
    }

    return (
        <div className="new-book-container">

            <div className="content">
                <section className="form">
                    <img src={logoImage} alt="Performance Bus"/>
                    <h1>{eventoId === '0' ? 'Novo' : 'Alterar'} Evento</h1>
                    <p>Entre com os dados do evento e clique em {eventoId === '0' ? "'Novo'" : "'Alterar'"}!</p>
                    <Link className="back-link" to="/eventos">
                        <FiArrowLeft size={16} color="#251fc5"/>
                        Voltar ao evento
                    </Link>
                </section>
                <form onSubmit={saveOrUpdate}>
                    <input type="date"
                        placeholder="Data"
                        value={data}
                        onChange={e => setData(e.target.value)}
                    />

                    <input
                        placeholder="Usuário"
                        value={usuario}
                        onChange={e => setUsuario(e.target.value)}
                    />

                    <input
                        placeholder="Veículo"
                        value={veiculo}
                        onChange={e => setVeiculo(e.target.value)}
                    />

                    <input
                        placeholder="Tipo do Evento"
                        value={tipoEvento}
                        onChange={e => setTipoEvento(e.target.value)}
                    />

                    <input
                        placeholder="Descricao"
                        value={descricao}
                        onChange={e => setDescricao(e.target.value)}
                    />

                    <button className="button" type="submit">{eventoId === '0' ? 'Novo' : 'Alterar'}</button>
                </form>
            </div>
        </div>
    );
}