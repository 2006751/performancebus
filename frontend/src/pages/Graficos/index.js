import React, { useState, useEffect } from 'react';
import {RadialChart, XYPlot, XAxis, YAxis, LineSeries,   ChartLabel, HorizontalGridLines, VerticalGridLines, VerticalBarSeries, LineSeriesCanvas} from 'react-vis';
import { Link, useHistory } from 'react-router-dom';
import {curveCatmullRom} from 'd3-shape';

import './styles.css';

import SettingsMenu from '../Menu/SettingsMenu';

import api from '../../services/api'

import logoImage from '../../assets/logo.svg'
import padlock from '../../assets/padlock.png'

export default function Graficos() {

    const history = useHistory();
    const nomeLocal = localStorage.getItem('nome');
    const accessToken = localStorage.getItem('accessToken');
	const {useCanvas} = false;
	const Line = useCanvas ? LineSeriesCanvas : LineSeries;
	const timestamp = new Date('November 24 2021').getTime();
	const MSEC_DAILY = 86400000;
    const nome = localStorage.getItem('nome');

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
	        <div className="book-container">
			<SettingsMenu />
            <header>
                <img src={logoImage} alt="PerformanceBus"/>
                <span>Bem-Vindo, <strong>{nome.toUpperCase()}</strong>!</span>
            </header>

            <ul>
			<li>
	            <h1>Eventos</h1>
				<RadialChart
					innerRadius={75}
					radius={115}
					getAngle={d => d.count}
					data={data}
					height={250}
					width={250}
					getLabel={d => d.title}
					showLabels
				/>
			</li>
			<li>
				<h1>Viagens</h1>
				<XYPlot margin={{bottom: 70}} xType="ordinal" width={300} height={300}>
					<VerticalGridLines />
					<HorizontalGridLines />
					<XAxis tickLabelAngle={-45} />
					<YAxis />
					<VerticalBarSeries
						data={[
							{x: 'No horário', y: 101},
							{x: 'Adiantados', y: 51},
							{x: 'Em atraso', y: 15}
						]}
					/>
					<VerticalBarSeries
						data={[
							{x: 'No horário', y: 99},
							{x: 'Adiantados', y: 55},
							{x: 'Em atraso', y: 13}
						]}
					/>
					<VerticalBarSeries
						data={[
							{x: 'No horário', y: 104},
							{x: 'Adiantados', y: 50},
							{x: 'Em atraso', y: 13}
						]}
					/>
					<VerticalBarSeries
						data={[
							{x: 'No horário', y: 110},
							{x: 'Adiantados', y: 41},
							{x: 'Em atraso', y: 17}
						]}
					/>
				</XYPlot>
				</li>
				</ul>
			</div>
        </div>
    )

}