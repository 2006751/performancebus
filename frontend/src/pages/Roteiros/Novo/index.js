import React, {useState, useEffect} from 'react';
import { useHistory, Link, useParams } from 'react-router-dom';
import { FiArrowLeft } from 'react-icons/fi'

import api from '../../../services/api'

import './styles.css';

import logoImage from '../../../assets/logo.svg';

export default function NewRoteiro(){

    const [id, setId] = useState(null);
    const [localPartida, setLocalPartida] = useState('');
    const [localChegada, setLocalChegada] = useState('');
    const [quantidadeParadas, setQuantidadeParadas] = useState('');
    const [tempoEsperado, setTempoEsperado] = useState('');
    const [quilometragem, setQuilometragem] = useState('');

    const {roteiroId} = useParams();

    const nomeLocal   = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function loadRoteiro() {
        try {
            const response = await api.get(`roteiro/${roteiroId}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })

            setId(response.data.id);
            setLocalPartida(response.data.localPartida);
            setLocalChegada(response.data.localChegada);
            setQuantidadeParadas(response.data.quantidadeParadas);
            setTempoEsperado(response.data.tempoEsperado);
            setQuilometragem(response.data.quilometragem);

        } catch (error) {
            alert('Erro recuperando roteiro! Tente novamente.');
            history.push('/roteiros');
        }
    }

    useEffect(() => {
        if (roteiroId === '0') return;
        else loadRoteiro();
    }, [roteiroId])

    async function saveOrUpdate(e){
        e.preventDefault();

        const data = {
            localPartida,
            localChegada,
            quantidadeParadas,
            tempoEsperado,
            quilometragem,
        }

        try {
            if (roteiroId === '0') {

                await api.post('roteiro', data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`
                    }
                });
            } else {
                data.id = id;
                await api.put('roteiro' + (data.id ? '/' + data.id : ''), data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`,
					    'Accept': 'application/json',
        				'Content-Type': 'application/json'                    
					}
                });
            }

            history.push('/roteiros');
        } catch (err) {
			console.log(err);
            alert('Erro ao salvar Roteiro! Tente novamente')
        }
    }

    return (
        <div className="new-book-container">
            <div className="content">
                <section className="form">
                    <img src={logoImage} alt="Performance Bus"/>
                    <h1>{roteiroId === '0' ? 'Novo' : 'Alterar'} Roteiro</h1>
                    <p>Entre com os dados do usuário e clique em {roteiroId === '0' ? "'Novo'" : "'Alterar'"}!</p>
                    <Link className="back-link" to="/roteiros">
                        <FiArrowLeft size={16} color="#251fc5"/>
                        Voltar aos roteiros
                    </Link>
                </section>
                <form onSubmit={saveOrUpdate}>
                    <input
                        placeholder="Local de Partida"
                        value={localPartida}
                        onChange={e => setLocalPartida(e.target.value)}
                    />

                    <input
                        placeholder="Local de Chegada"
                        value={localChegada}
                        onChange={e => setLocalChegada(e.target.value)}
                    />

                    <input
                        placeholder="Quantidade de Paradas"
                        value={quantidadeParadas}
                        onChange={e => setQuantidadeParadas(e.target.value)}
                    />

                    <input
                        placeholder="Tempo Esperado de Viagem"
                        value={tempoEsperado}
                        onChange={e => setTempoEsperado(e.target.value)}
                    />

                    <input
                        placeholder="Quilometragem"
                        value={quilometragem}
                        onChange={e => setQuilometragem(e.target.value)}
                    />


                    <button className="button" type="submit">{roteiroId === '0' ? 'Novo' : 'Alterar'}</button>
                </form>
            </div>
        </div>
    );
}