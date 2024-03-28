document.addEventListener("DOMContentLoaded", function() {
  const modalToggleButtons = document.querySelectorAll("[data-modal-toggle]");
  const modals = document.querySelectorAll("[data-modal-target]");

  modalToggleButtons.forEach(button => {
    button.addEventListener("click", function() {
      const target = this.dataset.modalTarget;
      const modal = document.querySelector(target);

      if (modal) {
        modal.classList.toggle("hidden");
      }
    });
  });

  const modalHideButtons = document.querySelectorAll("[data-modal-hide]");
  modalHideButtons.forEach(button => {
    button.addEventListener("click", function() {
      const target = this.dataset.modalHide;
      const modal = document.querySelector(target);

      if (modal) {
        modal.classList.add("hidden");
      }
    });
  });
});
