// Validation function for email
function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// Validation function for password
function isValidPassword(password) {
    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return passwordRegex.test(password);
}

// Function to add a new degree input field
function addDegreeInput() {
    const degreeInput = document.createElement("input");
    degreeInput.type = "text";
    degreeInput.placeholder = "Degree";
    degreeInput.required = true;
    document.querySelector(".doctor-form").insertBefore(degreeInput, document.querySelector(".add-degree"));
}

// Event listener for "Add Another Degree" button
document.querySelector(".add-degree").addEventListener("click", addDegreeInput);

// Event listener for form submission
document.querySelector(".doctor-form").addEventListener("submit", function (e) {
    e.preventDefault();

    const name = document.querySelector("input[name='name']").value;
    const email = document.querySelector("input[name='email']").value;
    const password = document.querySelector("input[name='password']").value;
    const confirmPassword = document.querySelector("input[name='cfmpassword']").value;
    const graduationDate = document.querySelector("input[name='date']").value;
    const degrees = [...document.querySelectorAll("input[type='text'][placeholder='Degree']")].map(input => input.value);
    const consultationFee = document.querySelector("input[name='cofee']").value;

    // Validate input fields, including password matching
    if (!isValidEmail(email)) {
        alert("Invalid email address.");
        return;
    }

    if (!isValidPassword(password)) {
        alert("Invalid password. Password must be at least 8 characters, with 1 special character and 1 digit.");
        return;
    }

    if (password !== confirmPassword) {
        alert("Passwords do not match.");
        return;
    }

    // Perform doctor registration or submission to the REST API
    const doctorData = {
        name,
        email,
        graduationDate,
        degrees,
        consultationFee,
    };

    // You can use fetch() or another method to submit the data to your REST API.

    // Clear the form after submission
    document.querySelector(".doctor-form").reset();
});

// Function to load more doctors
function loadMoreDoctors() {
    // Use fetch() to get the next batch of doctors from your REST API.
    // Append the new doctor cards to the doctors-list section.
}

// Event listener for "Load More" button
document.getElementById("load-more").addEventListener("click", loadMoreDoctors);

function togglePasswordVisibility() {
    const passwordInput = document.querySelector("input[name='password']");
    const passwordToggle = document.querySelector("#password-toggle");

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        passwordToggle.src = "Assets/passwordHide.png"; // Change the icon to hide
    } else {
        passwordInput.type = "password";
        passwordToggle.src = "Assets/passwordShow.png"; // Change the icon to show
    }
}
