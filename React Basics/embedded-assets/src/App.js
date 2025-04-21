import roofTops from "./assets/images/roof-top.webp";
import "./App.css";

function App() {
  const style = {
    width: "300px",
    height: "400px",
  };
  return (
    <div className="App">
      <h1>Task: add three images with some styling</h1>
      <img style={style} src={roofTops} alt="Anof roof top" />
      <img
        style={style}
        src={require("./assets/images/roof-top.webp")}
        alt="Anof roof top"
      />
    </div>
  );
}

export default App;
