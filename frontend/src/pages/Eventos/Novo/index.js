import React, {useState, useEffect} from 'react';
import { useHistory, Link, useParams } from 'react-router-dom';
import { FiArrowLeft } from 'react-icons/fi'
import AsyncSelect from 'react-select/async';

import api from '../../../services/api'

import './styles.css';

import logoImage from '../../../assets/logo.svg';

export default function NewEvento(){

    const [id, setId] = useState(null);
    const [dataHora, setDataHora] = useState('');
    const [usuario, setUsuario] = useState(null);
    const [veiculo, setVeiculo] = useState(null);
    const [tipoEvento, setTipoEvento] = useState(null);
    const [descricao, setDescricao] = useState('');

    const {eventoId} = useParams();

    const nomeLocal = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');

    const history = useHistory();

    const mapResponseUsuarioToCombo = (data) => ({
	    value: data.id,
	    label: data.nome,
    });

    const mapResponseVeiculoToCombo = (data) => ({
	    value: data.id,
	    label: data.identificacao,
    });

    const mapResponseTipoEventoToCombo = (data) => ({
	    value: data.id,
	    label: data.descricao,
    });

    async function loadUsuarios(value) {
  	  console.log("fetch");
      const data = await api.get('http://localhost:8080/usuario', {
	        headers: {
	            Authorization: `Bearer ${accessToken}`
	        }
      })
		.then((response) => response.data._embedded.usuarios)
	    .then((response) => response.map(mapResponseUsuarioToCombo))
		;

	  return data;	
	}
	
    async function loadVeiculos(value) {
      const data = await api.get('http://localhost:8080/veiculo', {
	        headers: {
	            Authorization: `Bearer ${accessToken}`
	        }
      })
		.then((response) => response.data._embedded.veiculos)
	    .then((response) => response.map(mapResponseVeiculoToCombo))
		;

	  return data;	
	}
	
    async function loadTiposEvento(value) {
      const data = await api.get('http://localhost:8080/tipo_evento', {
	        headers: {
	            Authorization: `Bearer ${accessToken}`
	        }
      })
		.then((response) => response.data._embedded.tipos_evento)
	    .then((response) => response.map(mapResponseTipoEventoToCombo))
		;

	  return data;	
	}
	
    async function loadUsuarios(value) {
  	  console.log("fetch");
      const data = await api.get('http://localhost:8080/usuario', {
	        headers: {
	            Authorization: `Bearer ${accessToken}`
	        }
      })
		.then((response) => response.data._embedded.usuarios)
	    .then((response) => response.map(mapResponseUsuarioToCombo))
		;

	  return data;	
	}
	
    async function loadEvento() {
        try {
            const response = await api.get(`evento/${eventoId}`, {
                headers: {
                    Authorization: `Bearer ${accessToken}`
                }
            })
            let adjustedDate = response.data.launchDate.split("T", 10)[0];

            setId(response.data.id);
            setDataHora(response.data.dataHora);
            setUsuario(response.data.usuario);
            setVeiculo(response.data.veiculo);
            setTipoEvento(response.data.tipoEvento);
            setDescricao(response.data.descricao);

        } catch (error) {
            alert('Erro recuperando evento! Tente novamente.');
            history.push('/eventos');
        }
    }

	function handleChangeData(ev) {
	  if (!ev.target['validity'].valid) return;
	  const dt= ev.target['value'] + ':00';
	  setDataHora(dt);
	}
    useEffect(() => {
        if (eventoId === '0') return;
        else loadEvento();
    }, [eventoId])

    async function saveOrUpdate(e){
        e.preventDefault();

        const data = {
			dataHora,
            descricao,
			usuario,
			veiculo,
			tipoEvento,
        }

        try {
            if (eventoId === '0') {
//	            data.usuario =  [ "http://localhost:8080/usuario/"+data.usuario];
//	            data.tipoEvento =  [ "http://localhost:8080/tipo_evento/"+data.tipoEvento];
//	            data.veiculo =  [ "http://localhost:8080/veiculo/"+data.veiculo];
                await api.post('evento/save', data, {
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

                    <input type="datetime-local"
                        placeholder="Data/Hora"
                        value={(dataHora || '').toString().substring(0, 19)}
                        onChange={handleChangeData}
                    />

    			    <AsyncSelect
	                        placeholder="Selecione um Usuário"
					        cacheOptions
					        loadOptions={loadUsuarios}
					        onInputChange={(data) => {}}
					        onChange={(data) => {
					          setUsuario(data.value);
					        }}
					        defaultOptions
				    />

    			    <AsyncSelect
	                        placeholder="Selecione um Veículo"
					        cacheOptions
					        loadOptions={loadVeiculos}
					        onInputChange={(data) => {}}
					        onChange={(data) => {
					          setVeiculo(data.value);
					        }}
					        defaultOptions
				    />

    			    <AsyncSelect
	                        placeholder="Tipo Evento"
					        cacheOptions
					        loadOptions={loadTiposEvento}
					        onInputChange={(data) => {}}
					        onChange={(data) => {
					          setTipoEvento(data.value);
					        }}
					        defaultOptions
				    />

                    <textarea
                        placeholder="Descricao"
                        value={descricao}
                        rows="5"
                        cols="43"
                        onChange={e => setDescricao(e.target.value)}
                    />

                    <button className="button" type="submit">{eventoId === '0' ? 'Novo' : 'Alterar'}</button>
                </form>
            </div>
        </div>
    );
}