/**
 * 
 */
import React from 'react';
import { DropdownMenu, MenuItem } from 'react-bootstrap-dropdown-menu';
import { useHistory } from 'react-router-dom';

class SettingsMenu extends React.Component {
  constructor() {
    super();
    this.logout = this.logout.bind(this);
  }

  logout() {
    const history = useHistory();
    localStorage.clear();
    history.push('/');
  }

  render() {
    return (
      <DropdownMenu>
        <MenuItem text="Usuários" location="/usuarios" />
        <MenuItem text="Veículos" location="/veiculos" />
        <MenuItem text="Viagens" location="/viagens" />
        <MenuItem text="Eventos" location="/eventos" />
        <MenuItem text="Roteiros" location="/roteiros" />
        <MenuItem text="Logout" onClick={this.logout} />
      </DropdownMenu>
    );
  }
}

export default SettingsMenu;

