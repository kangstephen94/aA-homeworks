import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Green from './green';
import Blue from './blue';
import Violet from './violet';

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        <NavLink class="active" exact to="/red">Red</NavLink>
        <NavLink class="active" to='/red/orange' >Add orange</NavLink>
        <NavLink class="active" to='/red/yellow' >Add yellow</NavLink>
        <NavLink class="active" to="/green">Green</NavLink>
        <NavLink class="active"exact to='/blue' >Blue only</NavLink>
        <NavLink class="active" to='/blue/indigo' >Add indigo</NavLink>
        <NavLink class="active"to="/violet">Violet</NavLink>

        <div id="rainbow">
          <Route path="/red" component={Red} />
          <Route path="/green" component={Green} />
          <Route path="/blue" component={Blue} />
           <Route path="/violet" component={Violet} />
        </div>
      </div>
    );
  }
}

export default Rainbow;
