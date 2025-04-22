#Parent API

---

# 📘 Parent Portal API Documentation

This document provides an overview of all available API endpoints for the Parent Portal application.

---

## 🔐 Authentication Endpoints

### **Login**
`POST /auth/login`

- **Body Params:**
  - `email`: string
  - `password`: string

### **Register**
`POST /auth/register`

- **Body Params:**
  - `fullName`: string
  - `email`: string
  - `password`: string

### **Request Password Reset**
`POST /auth/password-reset`

- **Body Params:**
  - `email`: string

### **Update Profile** (Auth Required)
`POST /auth/profile-update`

- **Body Params:** *(user profile fields)*

### **Update Password** (Auth Required)
`POST /auth/password-update`

- **Body Params:**
  - `oldPassword`: string
  - `newPassword`: string

---

## 👨‍👧 Child Management Endpoints (Auth Required)

### **Add Child**
`POST /child/add`

- **Body Params:** *(child details)*

### **Get All Children**
`GET /child/get`

### **Remove Child**
`GET /child/remove/:id`

- **Params:**
  - `id`: Child ID

### **Update Child**
`GET /child/update/:id`

- **Params:**
  - `id`: Child ID

---

## 📚 Program Management (Auth Required)

### **Add Program to Child**
`POST /program/add/:id`

- **Params:**
  - `id`: Child ID
- **Body Params:** *(program details)*

### **Get All Programs**
`GET /program/get/all`

### **Get Cart Items**
`GET /program/get/cart`

### **Remove Item from Cart**
`GET /program/del/cart/:id`

- **Params:**
  - `id`: Program ID

### **Get Programs for Specific Child**
`GET /program/child/:id`

- **Params:**
  - `id`: Child ID

---

## 👥 Cohorts (Auth Required)

### **Get Cohort List**
`GET /program/get/cohort`

---

## 💱 Miscellaneous

### **Get Supported Currencies**
`GET /get/currency`

---

## 📋 Survey System (Auth Required)

### **Get Survey Questions**
`GET /survey/get`

### **Submit Survey Answer**
`POST /survey/answer/:id`

- **Params:**
  - `id`: Survey ID
- **Body Params:** *(answers as per question type)*

---

## 🛡️ Authorization

All protected routes require an **Authorization Header** with a valid JWT token:

```
Authorization: Bearer <token>
```

#Teacher API

Nice — here’s a separate **Markdown file** for the Teacher API. You can name it something like `TEACHER_API_DOC.md` or append it to the main `README.md`.

---

# 📘 Teacher Portal API Documentation

This document outlines all available API endpoints for teacher users in the system.

---

## 🔐 Authentication Endpoints

### **Login**
`POST /auth/login`

- **Body Params:**
  - `email`: string
  - `password`: string

### **Register**
`POST /auth/register`

- **Body Params:**
  - `fullName`: string  
  - `email`: string  
  - `password`: string

### **Request Password Reset**
`POST /auth/password-reset`

- **Body Params:**
  - `email`: string

---

## 👤 Profile Management (Auth Required)

### **Update Profile**
`POST /auth/profile-update`

- **Body Params:** *(profile fields)*

### **Update Password**
`POST /auth/password-update`

- **Body Params:**
  - `oldPassword`: string  
  - `newPassword`: string

---

## 📊 Teacher Dashboard (Auth Required)

### **Get Activities**
`GET /get/activities`

### **Get All Teachers**
`GET /get/all-teachers`

---

## 🔁 Swap Schedule (Auth Required)

### **Get Swap Data**
`GET /swap/get`

### **Set Swap Request**
`POST /swap/set`

- **Body Params:** *(swap data)*

---

## 📚 Program Management (Auth Required)

### **Update Program Library**
`POST /update/program/:id`

- **Params:**
  - `id`: Program ID
- **Body Params:** *(program update details)*

---

## 📅 Attendance (Auth Required)

### **Mark Attendance**
`POST /mark/attendance`

- **Body Params:** *(attendance data: student ID, date, status, etc.)*

---

## 🛡️ Authorization

All protected routes require an **Authorization Header** with a valid JWT token:

```
Authorization: Bearer <token>
```
