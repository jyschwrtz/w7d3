import React from 'react';

class PokemonIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    return this.props.requestAllPokemon();
  }

  render() {
    return (
      <ul>
        {
          this.props.pokemon.map((poke, idx) => (
            <li key={idx}>
              <h1>{poke.name}</h1>
              <img src={poke.image_url}/>
            </li>
          ))
        }
      </ul>
    );
  }
}

export default PokemonIndex;
