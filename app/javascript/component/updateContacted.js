import { fetchWithToken } from "../utils/fetch_with_token";

const updateContacted = () => {
  const checkboxes = document.querySelectorAll('.form-checkbox');
  checkboxes.forEach(checkbox => checkbox.addEventListener('click', () => {
    event.preventDefault();
    const contactId = checkbox.dataset.contactId;

    fetchWithToken("/contacts/`${contactId}`/contacted", {
      method: "POST",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ contact: { contacted: true }})
    })
      .then(response => response.json())
      .then((data) => {

      });
  }));
}

export { updateContacted };
