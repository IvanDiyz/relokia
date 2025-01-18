const resultText = {
  Success: `✅ Your email was send successfully`,
  Error: `
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36 36"><path fill="#FF0000" d="M2.653 35C.811 35-.001 33.662.847 32.027L16.456 1.972c.849-1.635 2.238-1.635 3.087 0l15.609 30.056c.85 1.634.037 2.972-1.805 2.972H2.653z"/><path fill="#E5E5E5" d="M15.583 28.953c0-1.333 1.085-2.418 2.419-2.418 1.333 0 2.418 1.085 2.418 2.418 0 1.334-1.086 2.419-2.418 2.419-1.334 0-2.419-1.085-2.419-2.419zm.186-18.293c0-1.302.961-2.108 2.232-2.108 1.241 0 2.233.837 2.233 2.108v11.938c0 1.271-.992 2.108-2.233 2.108-1.271 0-2.232-.807-2.232-2.108V10.66z"/></svg>
    We cannot send you email right now. Use alternative way to contact us `,
}

let formData = {
  setPrice() {
    if (this.quantity >= 1 && this.quantity <= 10) {
      return "$10";
    } else if (this.quantity >= 11 && this.quantity <= 100) {
      return "$100";
    } else if (this.quantity >= 101 && this.quantity <= 1000) {
      return "$1000";
    }
  },
};

function objectjsx(result) {
  
  return (contentObject = {
    Contact: `
      <div class="customCard-body">
    <h3 class="customCard-body__title">Contact Info</h3>
    <form class="form" id="myForm">
        <div class="d-flex input">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" aria-describedby="nameHelp" value="${formData["name"]}">
        </div>
        <div class="d-flex input">
            <label for="email" class="form-label">Email</label>
            <span class="support_required">required</span>
            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required value="${formData["email"]}">
        </div>
        <div class="d-flex input">
            <label for="phone" class="form-label">Phone</label>
            <input type="tel" class="form-control" id="phone" value="${formData["phone"]}">
        </div>
    </form>
</div>
<div class="btn_wrapper">
    <button class="btn" data-type='next'>Continue</button>
    <button class="btn btn_back vision" data-type='back'>
        <span class='arrow_btn'>
            <svg viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                <g filter="url(#filter0_d_1_291)">
                    <path
                        d="M9.79488 10.1971L4.82506 5.22727L9.79488 0.257457L10.7537 1.20561L7.42449 4.5348H15.7874V5.91974H7.42449L10.7537 9.24361L9.79488 10.1971Z"
                        fill="#4F46E5" />
                </g>
                <defs>
                    <filter id="filter0_d_1_291" x="0.824951" y="0.257446" width="18.9624" height="17.9396"
                        filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                        <feFlood flood-opacity="0" result="BackgroundImageFix" />
                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
                            result="hardAlpha" />
                        <feOffset dy="4" />
                        <feGaussianBlur stdDeviation="2" />
                        <feComposite in2="hardAlpha" operator="out" />
                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_1_291" />
                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_1_291" result="shape" />
                    </filter>
                </defs>
            </svg>
        </span>
        Back
    </button>
</div>
      `,
    Quantity: `
      <div class="customCard-body">
        <h3 class="customCard-body__title">Quantity</h3>
        <form class="form" id="myForm">
          <div class="d-flex input">
            <label for="number" class="form-label">Quantity</label>
            <span class="support_required">required</span>
            <input type="number" class="form-control" id="quantity" value="${formData["quantity"]}" required>
          </div>
        </form>
        </div>
      <div class="btn_wrapper">
            <button class="btn" type="submit" form="myForm" data-type='next'>Continue</button>
            <button class="btn btn_back vision" data-type='back'>
                <span class='arrow_btn'>
                    <svg viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g filter="url(#filter0_d_1_291)">
                            <path d="M9.79488 10.1971L4.82506 5.22727L9.79488 0.257457L10.7537 1.20561L7.42449 4.5348H15.7874V5.91974H7.42449L10.7537 9.24361L9.79488 10.1971Z" fill="#4F46E5" />
                        </g>
                        <defs>
                            <filter id="filter0_d_1_291" x="0.824951" y="0.257446" width="18.9624" height="17.9396" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                <feFlood flood-opacity="0" result="BackgroundImageFix" />
                                <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha" />
                                <feOffset dy="4" />
                                <feGaussianBlur stdDeviation="2" />
                                <feComposite in2="hardAlpha" operator="out" />
                                <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
                                <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_1_291" />
                                <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_1_291" result="shape" />
                            </filter>
                        </defs>
                    </svg>
                </span>
                Back
            </button>
        </div>
      `,
    Price: `
      <div class="customCard-body">
        <h3 class="customCard-body__title">Price</h3>
        <span class="price_number">
          ${formData.setPrice()}
        </span>
      </div>
      <div class="btn_wrapper">
            <button class="btn" data-type='next' onclick="submitFormData()">Send to Email</button>
            <button class="btn btn_back vision" data-type='back'>
                <span class='arrow_btn'>
                    <svg viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g filter="url(#filter0_d_1_291)">
                            <path d="M9.79488 10.1971L4.82506 5.22727L9.79488 0.257457L10.7537 1.20561L7.42449 4.5348H15.7874V5.91974H7.42449L10.7537 9.24361L9.79488 10.1971Z" fill="#4F46E5" />
                        </g>
                        <defs>
                            <filter id="filter0_d_1_291" x="0.824951" y="0.257446" width="18.9624" height="17.9396" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                <feFlood flood-opacity="0" result="BackgroundImageFix" />
                                <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha" />
                                <feOffset dy="4" />
                                <feGaussianBlur stdDeviation="2" />
                                <feComposite in2="hardAlpha" operator="out" />
                                <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
                                <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_1_291" />
                                <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_1_291" result="shape" />
                            </filter>
                        </defs>
                    </svg>
                </span>
                Back
            </button>
        </div>
      `,
    Done: `
        <div class="customCard-body">
        <h3 class="customCard-body__title title_done">Done</h3>
        <div class="result_box">
          <span class="result">Looding</span>
        </div>
      </div>
      <div class="btn_wrapper">
            <button class="btn btn_again" data-type='reload'>
                <span class='arrow_back'>
                    <svg viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g>
                            <path d="M9.79488 10.1971L4.82506 5.22727L9.79488 0.257457L10.7537 1.20561L7.42449 4.5348H15.7874V5.91974H7.42449L10.7537 9.24361L9.79488 10.1971Z" fill="#ffffff" />
                        </g>
                    </svg>
                </span>
                Start again
            </button>
            <button class="btn btn_back vision" data-type='back'>
                <span class='arrow_btn'>
                    <svg viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g filter="url(#filter0_d_1_291)">
                            <path d="M9.79488 10.1971L4.82506 5.22727L9.79488 0.257457L10.7537 1.20561L7.42449 4.5348H15.7874V5.91974H7.42449L10.7537 9.24361L9.79488 10.1971Z" fill="#4F46E5" />
                        </g>
                        <defs>
                            <filter id="filter0_d_1_291" x="0.824951" y="0.257446" width="18.9624" height="17.9396" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                <feFlood flood-opacity="0" result="BackgroundImageFix" />
                                <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha" />
                                <feOffset dy="4" />
                                <feGaussianBlur stdDeviation="2" />
                                <feComposite in2="hardAlpha" operator="out" />
                                <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
                                <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_1_291" />
                                <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_1_291" result="shape" />
                            </filter>
                        </defs>
                    </svg>
                </span>
                Back
            </button>
        </div>
      `,
  });
}

let contentBody = document.querySelector(".change_block");

contentBody.addEventListener("click", (event) => {
  let navItems = document.querySelectorAll(".nav-item");
  const buttonCheck = event.target.closest(".btn");
  if (!buttonCheck) return;
  
  const myForm = document.getElementById("myForm");
  const currentActive = document.querySelector(".nav-item.active");
  const currentIndex = Array.from(navItems).indexOf(currentActive);
  let actualIndex = null;
  let actualType;
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

  myForm && collectFormData(myForm);

  if(!emailRegex.test(formData.email) || !formData.email) return
  
  navItems.forEach((item) => item.classList.remove("active"));
  
  if (event.target.dataset.type === "next") {
    actualIndex = (currentIndex + 1) % navItems.length;
    navItems[actualIndex].classList.add("active");
    actualType = navItems[actualIndex].innerText.split(" ")[0];
    changeBtn(actualType, navItems);
  } else if (event.target.dataset.type === "back") {
    actualIndex = (currentIndex - 1 + navItems.length) % navItems.length;
    navItems[actualIndex].classList.add("active");
    actualType = navItems[actualIndex].innerText.split(" ")[0];
    changeBtn(actualType);
  } else if (event.target.dataset.type === "reload") {
      window.location.reload();
  }

});

function changeBtn(type, navItems) {
  if(type === 'Price' && !formData.quantity) {
    navItems.forEach((item) => item.classList.remove("active"));
    navItems[1].classList.add("active");
    return
  }
  contentObject = objectjsx();
  contentBody.innerHTML = contentObject[type];

  const btnBack = document.querySelector(".btn_back");
  if (type === "Quantity" || type === "Price") {
    btnBack.classList.remove("vision");
  } else {
    btnBack.classList.add("vision");
  }
}
function collectFormData(form) {
  const inputs = form.querySelectorAll("input");
  inputs.forEach((input) => {
    let key = input.attributes.id.nodeValue;
    if (key) {
      formData[key] = input.value;
    }
  });
}

function setResult(data) {
  const currentActive = document.querySelector(".result");
  currentActive.classList.add(data)
  currentActive.innerHTML = resultText[data]
}

function submitFormData() {

  fetch('http://relokia/wp-json/my_custom_namespace/v1/submit-form', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json',
      },
      body: JSON.stringify(formData),
  })
  .then(response => response.json())
  .then(data => {
      if (data === 'Success') {
        formData.result = data
        setResult(data)
      } else {
        formData.result = data
        setResult(data)
      }
  })
  .catch(error => {
      formData.result = error
      setResult(error)
  });
}