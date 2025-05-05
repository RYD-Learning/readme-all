#Installations Guide

`chmod +x run-all.sh`

Install jq if it’s not installed (used to read JSON):

`sudo apt install jq`

Run the script:

`./run-all.sh`

# Auto Teacher Assignment AI – Admin Usage Guide (BackOffice)

This section demonstrates how the **AI-based Auto Teacher Assignment System** works within the admin dashboard. The feature intelligently matches students to teachers based on predefined rules such as availability, specialization, class size, and other criteria.

## 📸 Screenshot

![Auto Assignment Screenshot](https://i.postimg.cc/KYvXnb4w/autoass.jpg)

> Replace `<YOUR_IMAGE_LINK_HERE>` with the actual URL to your image.

---

## 🔧 How It Works

1. **Admin Login**  
   The admin logs into the dashboard and navigates to the **"Assignments"** or **"AI Tools"** section.

2. **Trigger Assignment**  
   By clicking the **"Auto Assign"** button, the AI engine begins analyzing available teachers and pending student allocations.

3. **Matching Logic**  
   The AI uses factors such as:
   - Teacher subject expertise
   - Student learning level or class
   - Teacher availability or workload
   - Any specific preferences or constraints

4. **Review & Confirmation**  
   Once the assignment is generated, the admin is presented with a **preview of matched students and teachers** (as shown in the image). The admin can:
   - Approve all matches
   - Edit specific pairings
   - Re-run the AI for optimized results

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
