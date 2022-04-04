export function focusElement(element) {
  requestAnimationFrame(() => element.focus());
}
