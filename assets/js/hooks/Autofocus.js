import { focusElement } from "../utils";

export const Autofocus = {
  mounted() {
    focusElement(this.el);
    document.getElementById("autofocus").focus();

    this.el.addEventListener("phx:focus", handleFocusEvent);
  },

  beforeUpdate() {
    focusElement(this.el);
    document.getElementById("autofocus").focus();
  },

  updated() {
    focusElement(this.el);
    document.getElementById("autofocus").focus();
  },
};

const handleFocusEvent = (event) => {
  console.log("event", event);

  const focus = () => {
    focusElement(this.el);
    document.getElementById("autofocus").focus();
    event.target.focus();
  };

  focus();
  setTimeout(focus, 1000);
};
