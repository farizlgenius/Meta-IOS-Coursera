import ReactPlayer from "react-player";
import "./App.css";

function App() {
  const videoUrl = "https://www.youtube.com/watch?v=-4z7g7qaDbs";
  const bird1 = new Audio(
    "https://upload.wikimedia.org/wikipedia/commons/9/9b/Hydroprogne_caspia_-_Caspian_Tern_XC432679.mp3"
  );

  const bird2 = new Audio(
    "https://upload.wikimedia.org/wikipedia/commons/b/b5/Hydroprogne_caspia_-_Caspian_Tern_XC432881.mp3"
  );

  function toggle1() {
    if (bird1.paused) {
      bird1.play();
    } else {
      bird1.pause();
    }
  }

  function toggle2() {
    if (bird2.paused) {
      bird2.play();
    } else {
      bird2.pause();
    }
  }
  return (
    <div className="App">
      <div className="player-wrapper">
        <h1>React Video Player</h1>
        <ReactPlayer url={videoUrl} volume={0.5} playing={true} />
      </div>
      <div className="audio-wrapper">
        <h1> React Audio Player</h1>
        <button onClick={toggle1}>Button 1</button>
        <button onClick={toggle2}>Button 2</button>
      </div>
      <div>
        <h1>Test Image</h1>
        <img
          src="https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"
          height={500}
          alt="im"
        />
      </div>
    </div>
  );
}

export default App;
