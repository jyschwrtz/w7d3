import React from 'react';
import ReactDOM from 'react-dom';

import {fetchAllPokemon} from './util/api_util';
import { receiveAllPokemon, requestAllPokemon } from './actions/pokemon_actions';

import configureStore from './store/store';

import {selectAllPokemon} from './reducers/selectors';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  window.selectAllPokemon = selectAllPokemon;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.receiveAllPokemon = receiveAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  window.fetchAllPokemon = fetchAllPokemon;
  const rootEl = document.getElementById('root');
  ReactDOM.render(<h1>Hi</h1>, rootEl);
});
