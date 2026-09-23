# API Testing Summary: Restful Booker Platform

## Overview
This document contains the results of API testing performed via Postman on the Restful Booker Platform backend (`https://automationintesting.online`). 
All responses are recorded based on live execution.

---

## 1. Get Rooms Endpoint (`GET /api/room/`)
* **Endpoint:** `https://automationintesting.online/api/room`
* **Method:** `GET`
* **Actual Status Code:** 200 OK
* **Response Time:** 90ms
* **Response Body (Actual JSON excerpt / summary):**
  ```json
    {
    "rooms": [
        {
            "accessible": true,
            "description": "Aenean porttitor mauris sit amet lacinia molestie. In posuere accumsan aliquet. Maecenas sit amet nisl massa. Interdum et malesuada fames ac ante.",
            "features": [
                "TV",
                "WiFi",
                "Safe"
            ],
            "image": "/images/room1.jpg",
            "roomName": "101",
            "roomPrice": 100,
            "roomid": 1,
            "type": "Single"
        },
        {
            "accessible": true,
            "description": "Vestibulum sollicitudin, lectus ac mollis consequat, lorem orci ultrices tellus, eleifend euismod tortor dui egestas erat. Phasellus et ipsum nisl. ",
            "features": [
                "TV",
                "Radio",
                "Safe"
            ],
            "image": "/images/room2.jpg",
            "roomName": "102",
            "roomPrice": 150,
            "roomid": 2,
            "type": "Double"
        },
        {
            "accessible": true,
            "description": "Etiam metus metus, fringilla ac sagittis id, consequat vel neque. Nunc commodo quis nisl nec posuere. Etiam at accumsan ex. ",
            "features": [
                "Radio",
                "WiFi",
                "Safe"
            ],
            "image": "/images/room3.jpg",
            "roomName": "103",
            "roomPrice": 225,
            "roomid": 3,
            "type": "Suite"
        }
    ]
  }
## 2. Send a message (`POST /api/message`)
* **Endpoint:** `https://automationintesting.online/api/message`
* **Method:** `POST`
* **Actual Status Code:** 200 OK
* **Response Time:** 72ms
* **Response Body (Actual JSON excerpt / summary):**
  ```json
  {
    "success": true
  }

## 3. Send an invalid message (Negative Test)
* **Endpoint:** `https://automationintesting.online/api/room`
* **Method:** `GET`
* **Actual Status Code:** 400 Bad Request
* **Response Time:** 174ms
* **Response Body (Actual JSON excerpt / summary):**
  ```json
  [
    "Message may not be blank",
    "Message must be set",
    "Email must be set",
    "Phone may not be blank",
    "Subject must be set",
    "Email may not be blank",
    "Name must be set",
    "Phone must be set",
    "Subject may not be blank",
    "Name may not be blank"
  ]
  
