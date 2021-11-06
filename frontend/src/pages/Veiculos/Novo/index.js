import React, {useState, useEffect} from 'react';
import { useHistory, Link, useParams } from 'react-router-dom';
import { FiArrowLeft } from 'react-icons/fi'

import api from '../../../services/api'

import './styles.css';

import logoImage from '../../../assets/logo.svg';

export default function NewVeiculo(){

    const [id, setId] = useState(null);
    const [placa, setPlaca] = useState('');
    const [identificacao, setIdentificacao] = useState('');
    const [marca, setMarca] = useState('');
    const [modelo, setModelo] = useState('');
    const [anoDeFabricacao, setAnoDeFabricacao] = useState('');

    const {veiculoId} = useParams();

    const nomeLocal = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    async function loadVeiculo() {
        try {
            const response = await api.get(`veiculo/${veiculoId}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })
            let adjustedDate = response.data.launchDate.split("T", 10)[0];

            setId(response.data.id);
            setPlaca(response.data.placa);
            setIdentificacao(response.data.identificacao);
            setMarca(response.data.marca);
            setModelo(response.data.modelo);
            setAnoDeFabricacao(response.data.anoDeFabricacao);
        } catch (error) {
            alert('Erro recuperando veículos! Tente novamente.');
            history.push('/veiculos');
        }
    }

    useEffect(() => {
        if (veiculoId === '0') return;
        else loadVeiculo();
    }, [veiculoId])

    async function saveOrUpdate(e){
        e.preventDefault();

        const data = {
            placa,
            identificacao,
            marca,
            modelo,
			anoDeFabricacao,
        }

        try {
            if (veiculoId === '0') {
                await api.post('veiculo', data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`
                    }
                });
            } else {
                data.id = id;
                await api.put('veiculo' + (data.id ? '/' + data.id : ''), data, {
                    headers: {
                        Authorization: `Bearer ${accessToken}`,
					    'Accept': 'application/json',
        				'Content-Type': 'application/json'                    
                    }
                });
            }

            history.push('/veiculos');
        } catch (err) {
            alert('Erro ao salvar veiculo! Tente novamente.')
        }
    }

    return (
        <div className="new-book-container">
            <div className="content">
                <section className="form">
                    <img src={logoImage} alt="Performance Bus"/>
                    <h1>{veiculoId === '0' ? 'Novo' : 'Alterar'} Veículo</h1>
                    <p>Entre com os dados do veículo e clique em {veiculoId === '0' ? "'Novo'" : "'Alterar'"}!</p>
                    <Link className="back-link" to="/veiculos">
                        <FiArrowLeft size={16} color="#251fc5"/>
                        Voltar aos veículos
                    </Link>
                </section>
                <form onSubmit={saveOrUpdate}>
                    <input
                        placeholder="Placa"
                        value={placa}
                        onChange={e => setPlaca(e.target.value)}
                    />
                    <input
                        placeholder="Identificação"
                        value={identificacao}
                        onChange={e => setIdentificacao(e.target.value)}
                    />
                    <input
                        placeholder="Marca"
                        value={marca}
                        onChange={e => setMarca(e.target.value)}
                    />
                    <input
                        placeholder="Modelo"
                        value={modelo}
                        onChange={e => setModelo(e.target.value)}
                    />
                    <input
                        placeholder="Ano de Fabricação"
                        value={anoDeFabricacao}
                        onChange={e => setAnoDeFabricacao(e.target.value)}
                    />

                    <button className="button" type="submit">{veiculoId === '0' ? 'Novo' : 'Alterar'}</button>
                </form>
            </div>
        </div>
    );
}