import "./App.css";
import { MealsList } from "./components/MealsList";
import { Counter } from "./components/Counter";
import { useState } from "react";
import MealsProvider from "./providers/MealsProvider";

function App() {
  const [meals, setMeals] = useState(["Pizza", "Burger"]);
  return (
    <div className="App">
      <MealsProvider>
        <MealsList />
        <Counter />
      </MealsProvider>
    </div>
  );
}

export default App;
