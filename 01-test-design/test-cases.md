# Test Cases: Restful Booker Platform

## 1. Contact Form Testing

### TC-CON-01: Successful submission of the contact form with valid data
* **Preconditions:** User is on the Restful Booker Platform home page and scrolled down to the Contact section.
* **Test Data:** 
  * Name: `John Rod`
  * Email: `john1978rod@gmail.com`
  * Phone: `+48939249334`
  * Subject: `Hey! How are you doing?`
  * Message: `Hey, I'm just worried about you, can you tell me that everything fine?`
* **Steps:**
  1. Fill in the "Name" field with valid name data.
  2. Fill in the "Email" field with a valid email format.
  3. Fill in the "Phone" field with a valid phone number.
  4. Fill in the "Subject" field with valid text.
  5. Fill in the "Message" field with a valid message.
  6. Click the "Submit" button.
* **Expected Result:** The form is successfully submitted, a POST request to `/message/` returns status `200 OK`, and a confirmation message appears (*"Thanks for getting in touch..."*).
* **Status:** Passed

### TC-CON-02: Validation check for mandatory fields in the contact form
* **Preconditions:** User is on the Contact section of the home page.
* **Test Data:** All contact form fields are left empty.
* **Steps:**
  1. Leave all fields (Name, Email, Phone, Subject, Message) empty.
  2. Click the "Submit" button.
* **Expected Result:** The system prevents form submission and displays validation error messages for the required fields.
* **Status:** Passed

---

## 2. Navigation & UI Testing

### TC-NAV-01: Header navigation menu links redirection
* **Preconditions:** User is viewing the home page.
* **Steps:**
  1. Click on the "Rooms" menu item in the header.Rooms
  2. Click on the "Booking" menu item in the header.
  3. Click on the "Amenities" menu item in the header.
  4. Click on the "Location" menu item in the header.
  5. Click on the "Contact" menu item in the header.
* **Expected Result:** The page smoothly scrolls or redirects to the corresponding section of the page without critical errors.
* **Status:** Passed (with minor UI observations noted on Booking/Amenities).
