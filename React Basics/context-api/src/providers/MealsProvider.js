import React, { createContext, useContext, useState } from "react";

const MealsContext = createContext();

const todaysMeals = ["Pizza", "Burger", "Pepsi", "Spaghetti", "Chicken"];

const MealsProvider = ({ children }) => {
  const [meals, setMeals] = useState(todaysMeals);

  return (
    <MealsContext.Provider value={{ meals }}>{children}</MealsContext.Provider>
  );
};

export const useMealsListContext = () => useContext(MealsContext);

export default MealsProvider;
