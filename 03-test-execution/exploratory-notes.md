# Exploratory Testing & Usability Notes: Restful Booker Platform

## Overview
This document contains exploratory testing sessions notes, usability observations, and UX insights discovered while testing the Restful Booker Platform (`https://restful-booker-platform.live/`).

---

## Session 1: Contact Form & User Feedback Loop
* **Area Explored:** "Get in Touch" / Contact form section.
* **Observation 1 (UX Improvement / Minor Limitation):** 
  * After a successful form submission, the system displays a confirmation message (*"Thanks for getting in touch..."*), but lacks a reset or "Send another message" button.
    The user is left in a static state where they cannot easily submit a second inquiry without clearing or refreshing manually.
* **Severity/Type:** Usability Observation / Low priority enhancement.

---

## Session 2: Header Navigation Menu
* **Area Explored:** Top navigation bar (`Rooms`, `Booking`, `Amenities`, `Location`, `Contact`, `Admin`).
* **Observations:**
  * **Rooms / Location / Contact:** Function as expected, smooth scrolling or redirection to target sections.
  * **Booking:** Causes a slight unintended vertical jump (page jerk) when clicked.
  * **Amenities:** Acts as a broken or unhandled anchor link (only updates the URL hash `#amenities` without proper smooth scroll or view anchoring).
  * **Admin:** Redirects to an authentication login page. Since public user registration is absent, access is strictly restricted to administrative roles.

---

## Session 3: Room Cards ("Our Rooms" Section)
* **Area Explored:** Room presentation cards (Single, Double, Suite).
* **Observation:**
  * Interaction is limited exclusively to the "Book now" button.
    Clicking on the room image or descriptive text block does not trigger any action (e.g., opening a modal with photo galleries or detailed views).
    While preventing accidental clicks is understandable, modern UX patterns usually support image viewing or card-wide interactions.
