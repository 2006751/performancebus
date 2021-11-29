import React, { useState, useEffect } from 'react';
import { useHistory} from 'react-router-dom';
import {
  XYPlot,
  XAxis,
  YAxis,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries
} from 'react-vis';


import api from '../../services/api'

import logoImage from '../../assets/logo.svg'
import padlock from '../../assets/padlock.png'

export default function Graficos() {

    const history = useHistory();
    const nomeLocal = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');
    const timestamp = new Date('September 9 2017').getTime();
    const MSEC_DAILY = 86400000;

	const [data, setData] = useState([
		{ title: 'Limpeza', count: 85, color: "#ff055f" },
		{ title: 'Manutenção Preventiva', count: 40, color: "#ff0000" },
		{ title: 'Manutenção Corretiva', count: 20, color: "#ff00ff" },
		{ title: 'Quebra em viagem', count: 10, color: "#00ff00" },
		{ title: 'Acidente', count: 5, color: "#0000ff" },
    ]);
	
    async function getGrafico(){
		console.log('eiE')
		const response = await api.get('eventos/portipo', {
            headers: {
                Authorization: `Bearer ${accessToken}`,
				'Accept': 'application/json',
				'Content-Type': 'application/json;charset=UTF-8',
			}
        });

        console.log(response.data._embedded.porTipo);
 		setData([ ...data, ...response.data._embedded.to])
    };

	useEffect(() => {
        getGrafico();
    }, [])

    return (
	    <div>
	        <div className="login-container">

          <h1>Eventos</h1>
				  <XYPlot xType="time" width={300} height={300}>
            <HorizontalGridLines />
            <VerticalGridLines />
            <XAxis title="X Axis" />
            <YAxis title="Y Axis" />
            <LineSeries
              data={[
                {x: timestamp + MSEC_DAILY, y: 3},
                {x: timestamp + MSEC_DAILY * 2, y: 5},
                {x: timestamp + MSEC_DAILY * 3, y: 15},
                {x: timestamp + MSEC_DAILY * 4, y: 12}
              ]}
            />
            <LineSeries data={null} />
            <LineSeries
              data={[
                {x: timestamp + MSEC_DAILY, y: 10},
                {x: timestamp + MSEC_DAILY * 2, y: 4},
                {x: timestamp + MSEC_DAILY * 3, y: 2},
                {x: timestamp + MSEC_DAILY * 4, y: 15}
              ]}
            />
        </XYPlot>


			</div>
        </div>
    )

}