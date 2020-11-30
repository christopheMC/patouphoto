import { fetchWithToken } from "../utils/fetch_with_token";

const updateContacted = () => {
  const checkboxes = document.querySelectorAll('.form-checkbox');
  const afficheck = document.querySelectorAll('.affiche');
  checkboxes.forEach(checkbox => checkbox.addEventListener('click', () => {
    event.preventDefault();
    for (let i = 0; i < afficheck.count; i++) {
      this.classList.add('para');
    }
    const contactId = checkbox.dataset.contactId;

    fetchWithToken(`/contacts/${contactId}/contacted`, {
      method: "POST",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
    })
      .then(response => response.json())
      .then(data => console.log(data));
  }));
}

export { updateContacted };
