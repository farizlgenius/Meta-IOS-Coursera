import { useState } from "react";
import { useMealsListContext } from "../providers/MealsProvider";

export const MealsList = (props) => {
  const style = {
    width: "40%",
    border: "1px solid black",
    padding: "10px",
    textAlign: "center",
  };

  const { meals } = useMealsListContext();

  return (
    <>
      <h1>Meals List with Context API</h1>
      {meals.map((meal, index) => (
        <h3 key={index} style={style}>
          {meal}
        </h3>
      ))}
    </>
  );
};
