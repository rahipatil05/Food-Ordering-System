
# 🍽️ Food Ordering System - PHP Project

## 📌 Introduction

This Food Ordering System is a web-based application developed using **PHP** and **MySQL**. It allows users to browse a digital food menu, place orders, track them in real-time, and manage their account-related activities. The system is designed for restaurants, food joints, or cloud kitchens that want to automate online orders and provide customers with a seamless food ordering experience.

---

## 📁 Project Structure Overview

Here’s a breakdown of the key files and their purposes:

### 🔷 Core PHP Files

- **index.php** – Main landing page with menu highlights and links to login/register.
- **about-us.php** – Details about the food service or company.
- **contact-us.php** – Contact form and company contact information.
- **cart.php** – Displays selected food items before order placement.
- **invoice.php** – Generates invoices for successful orders.
- **logout.php** – Handles session destruction and user logout.
- **README.md** – Contains project overview and documentation.

### 🔷 User Account Management

- **my-account.php** – User dashboard for viewing profile, orders, and settings.
- **forgot-password.php** – Sends a password reset link to the registered email.
- **reset-password.php** – Allows setting a new password using a secure token.
- **login.php / register.php (optional)** – (Not shown, but typically required)

### 🔷 Order Processing

- **cancelorder.php** – Enables users to cancel their placed orders.
- **order-details.php** – Displays detailed information about a particular order.
- **track-order.php / trackorder.php / track-order-details.php** – Track the order’s real-time status and delivery stages.

### 🔷 Menu & Search

- **our-menu.php** – Displays all food items listed in the menu.
- **categorywise-menu.php** – Filters and displays menu by categories like beverages, main course, desserts, etc.
- **food-detail.php** – Shows detailed information of selected food items (name, ingredients, price, image).
- **search-result.php** – Displays search results based on user queries.

### 🔷 Database

- **fosdb.sql** – SQL file to set up database schema including tables for users, food items, orders, categories, invoices, etc.

---

## 💡 Features

- User-friendly interface
- Secure login and registration
- Password reset and recovery
- Browse food menu by categories
- Add items to cart and place orders
- Track orders with live status
- Cancel orders if needed
- View order details and invoices
- Search food items instantly
- Contact support for help

---

## 🏗️ Technologies Used

- **Frontend**: HTML, CSS, Bootstrap (optional)
- **Backend**: PHP
- **Database**: MySQL (via fosdb.sql)
- **Server**: Apache (XAMPP/WAMP/LAMP compatible)

---

## 🔐 Security Considerations

- Password reset via token-based system
- SQL queries should be parameterized to prevent SQL injection
- User session management to avoid unauthorized access

---

## 📦 How to Set Up

1. Clone or download the project folder.
2. Import the `fosdb.sql` into your MySQL server using phpMyAdmin or command line.
3. Configure `config.php` with your DB credentials.
4. Start Apache and MySQL using XAMPP/WAMP.
5. Open `http://localhost/<project-folder>` in your browser.

---

## 🛠️ Possible Improvements

- Add Admin Panel for managing orders, menu items, users, etc.
- Include image upload for food items
- Add payment integration (e.g., Razorpay, PayPal)
- Implement order delivery tracking with maps
- Improve UI with responsive design

---

## 🙋‍♂️ Author & Credits

Developed by [Your Name]  
Special thanks to the contributors and open-source community.

---

## 📄 License

This project is open-source. You can modify and use it under MIT License or as per your institution's policy.

---

