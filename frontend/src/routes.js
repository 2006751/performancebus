import React from 'react';
import {BrowserRouter, Route, Switch} from 'react-router-dom';

import Login from './pages/Login';

import Veiculos from './pages/Veiculos';
import VeiculoNovo from './pages/Veiculos/Novo';

import Eventos from './pages/Eventos';
import EventoNovo from './pages/Eventos/Novo';

import Usuarios from './pages/Usuarios';
import UsuarioNovo from './pages/Usuarios/Novo';

import Roteiros from './pages/Roteiros';
import RoteiroNovo from './pages/Roteiros/Novo';

import Viagens from './pages/Viagens';
import ViagemNovo from './pages/Viagens/Novo';

import Graficos from './pages/Graficos';
import Graficos2 from './pages/Graficos2';

export default function Routes() {
    return (
        <BrowserRouter>
            <Switch>
                <Route path="/" exact component={Login}/>

                <Route path="/usuarios" exact component={Usuarios}/>
                <Route path="/usuario/new/:usuarioId" component={UsuarioNovo}/>

                <Route path="/eventos" exact component={Eventos}/>
                <Route path="/evento/new/:eventoId" component={EventoNovo}/>

                <Route path="/veiculos" exact component={Veiculos}/>
                <Route path="/veiculo/new/:veiculoId" component={VeiculoNovo}/>

				<Route path="/roteiros" exact component={Roteiros}/>
				<Route path="/roteiro/new/:roteiroId" component={RoteiroNovo}/>
				
				<Route path="/viagens" exact component={Viagens}/>
				<Route path="/viagem/new/:viagemId" component={ViagemNovo}/>

                <Route path="/graficos" exact component={Graficos}/>
                <Route path="/graficos2" exact component={Graficos2}/>

           </Switch>
        </BrowserRouter>
    );
}