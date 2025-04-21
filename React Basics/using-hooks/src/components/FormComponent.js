import { useState } from "react";

export const FormComponent = () => {
  const [form, setForm] = useState({
    firstname: "",
    lastname: "",
    email: "",
  });
  return (
    <>
      <label>
        First Name:
        <input
          value={form.firstname}
          onChange={(e) =>
            setForm({
              ...form,
              firstname: e.target.value,
            })
          }
        />
      </label>
      <label>
        Last Name:
        <input
          value={form.lastname}
          onChange={(e) =>
            setForm({
              ...form,
              lastname: e.target.value,
            })
          }
        />
      </label>
      <label>
        Email:
        <input
          value={form.email}
          onChange={(e) =>
            setForm({
              ...form,
              email: e.target.value,
            })
          }
        />
      </label>
      <p>
        {form.firstname} {form.lastname}
        {"\n"}
        {form.email}
      </p>
    </>
  );
};
