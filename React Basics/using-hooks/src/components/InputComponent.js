import { useState } from "react";

export const InputComponenet = () => {
  const [value, setValue] = useState("Hello");

  const handleChange = (e) => {
    setValue(e.target.value);
  };
  return (
    <>
      <input type="text" value={value} onChange={handleChange} />
      <p>You typed: {value}</p>
      <button type="button" onClick={() => setValue("Hello")}>
        Reset
      </button>
    </>
  );
};
