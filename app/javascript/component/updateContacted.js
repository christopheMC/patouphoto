import { fetchWithToken } from "../utils/fetch_with_token";

const updateContacted = () => {
  const checkboxes = document.querySelectorAll('.form-checkbox');
  const affichecks = document.querySelectorAll('.affiche');
  checkboxes.forEach(checkbox => checkbox.addEventListener('click', (event) => {
    event.preventDefault();
    for (let i = 0; i < affichecks.length; i++) {
      if (checkboxes[i].checked) {
        affichecks[i].classList.replace('affiche', 'para');
      }
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
