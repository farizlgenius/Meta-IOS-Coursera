import Bag from "./components/Bag";
import "./App.css";
import Apples from "./components/Apples";
import Pears from "./components/Pears";

function App() {
  return (
    <div className="App">
      <Bag>
        <Apples />
      </Bag>
      <Bag>
        <Pears />
      </Bag>
    </div>
  );
}

export default App;
