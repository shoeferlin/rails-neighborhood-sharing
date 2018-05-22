import "bootstrap";


const batch = 1; // change to your own batch id
const baseUrl = "https://wagon-chat.herokuapp.com/";

// Your turn to code!
let message = document.querySelector('#your-message');
let name = document.querySelector('#your-name');
const send = document.querySelector('.btn');
// const refreshbtn = document.querySelector('#refresh');
const reviewmessage = document.querySelector('.list-unstyled');
console.log(reviewmessage);
const url = 'https://wagon-chat.herokuapp.com/142/messages';

// PUT message
const putmessage = (event) => {
  event.preventDefault();
  message = message.value;
  name = name.value;
  console.log(`${message} by ${name}`);
  const datas = { author: name, content: message };

  fetch(url, {
    method: 'post',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(datas)
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data.messages);
    });

  message.value = "";
  name.value = "";
};

// GET saved messages

const refresh = () => {
  reviewmessage.innerHTML = "";
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data.messages);
      const messages = data.messages;

      messages.forEach((mess) => {
        const minutesAgo = Math.round((new Date() - new Date(message.created_at)) / 60000);
        reviewmessage.insertAdjacentHTML("afterbegin", `<li>${mess.content} (posted <span class="date">${minutesAgo} minutes</span> ago) by ${mess.author}</li>`);
        reviewmessage.insertAdjacentHTML("afterbegin", `<li><%= current.user %></li>`);
      });
    });
};

// Refresh

const getmessage = (event) => {
  event.preventDefault();
  setInterval(() => {
    refresh();
  }, 5000);
};

// Command
send.addEventListener('click', putmessage);
document.addEventListener('DOMContentLoaded', getmessage);

