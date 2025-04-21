import { useMealsListContext } from "../providers/MealsProvider";

export const Counter = () => {
  const { meals } = useMealsListContext();
  return (
    <>
      <p>Your meals is : {meals.length}</p>
    </>
  );
};
