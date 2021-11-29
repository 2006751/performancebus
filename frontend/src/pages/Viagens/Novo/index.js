import React, {useState, useEffect} from 'react';
import { useHistory, Link, useParams } from 'react-router-dom';
import { FiArrowLeft } from 'react-icons/fi'

import api from '../../../services/api'

import './styles.css';

import logoImage from '../../../assets/logo.svg';

export default function NewViagem(){

    const [id, setId] = useState(null);
    const [usuario, setUsuario] = useState('');
    const [veiculo, setVeiculo] = useState('');
    const [roteiro, setRoteiro] = useState('');
    const [partida, setPartida] = useState('');
    const [chegada, setChegada] = useState('');

    const {viagemId} = useParams();

    const nomeLocal = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function loadViagem() {
        try {
            const response = await api.get(`viagem/${viagemId}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })
            let adjustedDate = response.data.launchDate.split("T", 10)[0];

            setId(response.data.id);
            setUsuario(response.data.usuario);
            setVeiculo(response.data.veiculo);
            setRoteiro(response.data.roteiro);
            setPartida(response.data.partida);
            setChegada(response.data.chegada);
        } catch (error) {
            alert('Erro recuperando veículos! Tente novamente.');
            history.push('/viagem');
        }
    }

    useEffect(() => {
        if (viagemId === '0') return;
        else loadViagem();
    }, [viagemId])

    async function saveOrUpdate(e){
        e.preventDefault();

        const data = {
            usuario,
            veiculo,
            roteiro,
            partida,
			chegada,
        }

        try {
            if (viagemId === '0') {
                await api.post('viagem', data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`
                    }
                });
            } else {
                data.id = id;
                await api.put('viagem' + (data.id ? '/' + data.id : ''), data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`,
					    'Accept': 'application/json',
        				'Content-Type': 'application/json'                    
                    }
                });
            }

            history.push('/viagem');
        } catch (err) {
            alert('Erro ao salvar a viagem! Tente novamente.')
        }
    }

    return (
        <div className="new-book-container">

            <div className="content">
                <section className="form">
                    <img src={logoImage} alt="Performance Bus"/>
                    <h1>{viagemId === '0' ? 'Nova' : 'Alterar'} Viagem</h1>
                    <p>Entre com os dados da viagem e clique em {viagemId === '0' ? "'Nova'" : "'Alterar'"}!</p>
                    <Link className="back-link" to="/viagens">
                        <FiArrowLeft size={16} color="#251fc5"/>
                        Voltar às viagens
                    </Link>
                </section>
                <form onSubmit={saveOrUpdate}>

                    <input
                        placeholder="Usuario"
                        value={usuario}
                        onChange={e => setUsuario(e.target.value)}
                    />
                    <input
                        placeholder="Veículo"
                        value={veiculo}
                        onChange={e => setVeiculo(e.target.value)}
                    />
                    <input
                        placeholder="Roteiro"
                        value={roteiro}
                        onChange={e => setRoteiro(e.target.value)}
                    />
                    <input
						type="date"
                        placeholder="Partida"
                        value={partida}
                        onChange={e => setPartida(e.target.value)}
                    />
                    <input
						type="date"
                        placeholder="Chegada"
                        value={chegada}
                        onChange={e => setChegada(e.target.value)}
                    />

                    <button className="button" type="submit">{viagemId === '0' ? 'Novo' : 'Alterar'}</button>
                </form>
            </div>
        </div>
    );
}