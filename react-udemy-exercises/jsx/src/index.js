// Import React and React DOM
import React from "react";
import ReactDOM from "react-dom";

// Create a React component
const App = () => {
  const buttonText = "click me";
  const style = { backgroundColor: "blue", color: "white" };

  return (
    <div>
      <label htmlFor="name" className="label">
        Enter name:
      </label>
      <input type="text" id="name" />
      <button style={style}>
        {buttonText}
      </button>
    </div>
  );
};

// Take the react component and show on screen
ReactDOM.render(<App />, document.querySelector("#root"));
