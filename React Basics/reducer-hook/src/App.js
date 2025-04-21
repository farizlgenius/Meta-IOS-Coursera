import "./App.css";
import { useReducer } from "react";

const reducer = (state, action) => {
  if (action.do === "play") return { energy: state.energy - 10 };
  if (action.do === "sleep") return { energy: state.energy + 10 };
  return new Error();
};

function App() {
  const initialState = { energy: 100 };
  const [state, dispatch] = useReducer(reducer, initialState);

  return (
    <div className="App">
      <h1>Energy: {state.energy}</h1>
      <div>
        <button onClick={() => dispatch({ do: "play" })}>Play</button>
        <button onClick={() => dispatch({ do: "sleep" })}>Sleep</button>
      </div>
    </div>
  );
}

export default App;
