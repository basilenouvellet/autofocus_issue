export const Autofocus = {
  mounted() {
    this.el.focus();
    document.getElementById("autofocus").focus();

    this.el.addEventListener("phx:focus", handleFocusEvent);
  },

  beforeUpdate() {
    this.el.focus();
    document.getElementById("autofocus").focus();
  },

  updated() {
    this.el.focus();
    document.getElementById("autofocus").focus();
  },
};

const handleFocusEvent = (event) => {
  console.log("event", event);

  this.el.focus();
  document.getElementById("autofocus").focus();
  event.target.focus();
};
