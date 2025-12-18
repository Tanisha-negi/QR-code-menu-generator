---
title: QR Code Generator
emoji: 📸
colorFrom: indigo
colorTo: blue
sdk: docker
pinned: false
---

# 🐍 QR Code Menu Generator (Django)

[![Live Demo](https://img.shields.io/badge/Demo-Live-brightgreen.svg)](YOUR_VERCEL_OR_NETLIFY_LINK)
[![GitHub Repository](https://img.shields.io/badge/Code-GitHub-blue.svg)](https://github.com/Tanisha-negi/QR-code-menu-generator.git)

## 🌟 Overview

A full-stack web application built with the Django framework that allows users to input any URL and instantly generate a scannable QR code image. This project demonstrates core web development skills including server-side logic, package management, and responsive templating.

## 🛠️ Tech Stack

* **Backend Framework:** **Django**
* **Backend Language:** **Python 3**
* **QR Code Generation:** **`qrcode` Library**
* **Image Processing:** **`Pillow` (PIL)**
* **Frontend:** HTML5, CSS3
* **Styling:**  **Bootstrap 5** 
* **Database:** **SQLite**

## ✨ Features

* **Instant Generation:** Converts user URLs into QR codes on the fly.
* **Responsive UI:** User interface is optimized for all screen sizes.
* **Image Output:** Displays the QR code image, ready to be scanned.
* **Form Handling:** Secure and robust form processing using Django's built-in features.

---

## 🔑 Setup and Local Run

To get this project running locally, you must have **Python** installed.

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/Tanisha-negi/QR-code-menu-generator.git
    ```
2.  Navigate to the project directory:
    ```bash
    cd QR-code-menu-generator
    ```
3.  **Create a Virtual Environment** (Recommended practice for Python):
    ```bash
    python -m venv venv
    ```
4.  **Activate the Virtual Environment:**
    * **Windows:** `.\venv\Scripts\activate`
    * **macOS/Linux:** `source venv/bin/activate`
5.  **Install Dependencies:** Install all necessary Python libraries (like `django` and `qrcode`).
    ```bash
    pip install -r requirements.txt
    ```
6.  **Run Migrations:** Initialize the database.
    ```bash
    python manage.py migrate
    ```
7.  **Run the Server:**
    ```bash
    python manage.py runserver
    ```
8.  Open your browser and navigate to `http://127.0.0.1:8000/`.
