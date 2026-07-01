# 🎓 Enjaz | إنجاز

<div align="center">

### 🚀 Smart University Clubs Management Platform

A centralized platform for managing university clubs, events, leadership roles, reports, and student engagement.

</div>

---

# 📌 Overview

**Enjaz** is a digital platform designed to help universities manage student clubs efficiently through one centralized system.

The platform automates multiple operations including:

* 🏫 Club management
* 👥 Leadership assignment
* 🎉 Event organization
* 📄 Reports management
* 📋 Membership management
* 📊 Activity tracking
* 🔔 Notifications system

---

# ❗ Problem Statement

Universities often face several challenges in managing student clubs:

* 📂 Scattered club management systems
* 📢 Events announced through multiple platforms
* 🧩 Lack of centralized organization
* 📊 Difficulty tracking achievements and reports

---

# 💡 Proposed Solution

Enjaz provides a unified digital platform that enables universities to:

* 🏫 Create and manage clubs
* 👨‍💼 Assign leaders and supervisors
* 🎉 Organize and manage events
* 📄 Upload and download reports
* 📅 View events calendars
* 👥 Manage memberships and join requests
* 📊 Track activities and statistics

---

# 🎯 Objectives

* ✅ Improve university clubs management
* ✅ Simplify event organization and tracking
* ✅ Increase student engagement
* ✅ Centralize university club operations
* ✅ Enhance governance and accessibility

---

# 🧠 Architecture

The project follows **Clean Architecture** principles to ensure scalability and maintainability.

---

# 🛠️ Technologies Used

## Frontend

* Flutter

## State Management

* Bloc / Cubit

## Backend & Database

* Supabase

## Notifications

* OneSignal

## File Storage

* Supabase Storage

## Architecture

* Clean Architecture

---

# 👥 Roles & Permissions

The system supports dynamic role-based access.

A user can have different roles depending on the club.

Example:

* 👨‍🎓 Student in one club
* 👨‍💼 Leader in another club
* 🧑‍🏫 Supervisor in another club

---

# 🔐 Roles

## 👨‍🎓 Student

* Browse clubs
* Join clubs
* View club details
* View members
* Browse events
* Register for events
* View registered events

## 👨‍💼 Leader

Includes all student permissions plus:

* Edit club details
* Manage club events
* Create events
* Update events
* Upload event reports
* View archived events
* Manage club members

## 🧑‍🏫 Supervisor

Includes all leader permissions plus:

* Assign leaders
* Change club leadership
* Supervise club management

## 🛡️ Admin

Full platform access including:

* Universities management
* Clubs management
* Statistics dashboard
* Reports management
* Full events calendar
* Assign supervisors & leaders
* Full control over the platform

---

# 📱 Main Features

## 🔐 Authentication

* Login
* Signup
* OTP Verification
* Forgot Password
* Reset Password

## 🏫 Clubs

* Browse clubs
* Club details
* Members management
* Join requests
* Registered clubs

## 🎉 Events

* Available events
* Registered events
* Event details
* Event calendar
* Archived events
* Reports upload & download

## 🔎 Search & Filter

* Search for clubs
* Search for events
* Filter clubs by university

## 👤 Profile

* Edit personal information
* Avatar Selection & Preview
* Previous attended events
* Dark mode
* Notifications settings
* Logout

---

# 📄 Reports System

The platform supports PDF reports management.

Features include:

* 📤 Upload reports
* 👀 Preview reports inside the app
* ⬇️ Download reports to device
* ☁️ Store reports using Supabase Storage

---

# 🌙 Additional Features

* 🌙 Dark Mode
* 🔔 Push Notifications
* 📅 Event Calendar
* 📊 Statistics Dashboard
* 🔐 Dynamic Role Permissions

---

# 📸 Screenshots

## 🔑 Authentication

| Login | Signup | OTP | Forgot Password | Reset Password |
| :---: | :---: | :---: | :---: | :---: |
| <img src="screenshots/login.png" width="150"> | <img src="screenshots/signup.png" width="150"> | <img src="screenshots/otp.png" width="150"> | <img src="screenshots/forgot_password.png" width="150"> | <img src="screenshots/reset_password.png" width="150"> |

---

## 🛡️ Admin Panel

| Statistics dashboard | Admin Panel | Universities | Add University | Clubs |
| :---: | :---: | :---: | :---: | :---: |
| <img src="screenshots/dashboard.png" width="150"> | <img src="screenshots/admin_panel.png" width="150"> | <img src="screenshots/universities.png" width="150"> | <img src="screenshots/add_university.png" width="150"> | <img src="screenshots/clubs.png" width="150"> |

| Add Club | Reports | Events Calendar |
| :---: | :---: | :---: |
| <img src="screenshots/add_club.png" width="150"> | <img src="screenshots/reports.png" width="150"> | <img src="screenshots/events_calendar.png" width="150"> |

---

## 💼 Leader & Supervisor

| Edit Club | Delete Members | Join Requests | Events Management | Club Calendar |
| :---: | :---: | :---: | :---: | :---: |
| <img src="screenshots/edit_club.png" width="150"> | <img src="screenshots/delete_members.png" width="150"> | <img src="screenshots/join_requests.png" width="150"> | <img src="screenshots/manage_events.png" width="150"> | <img src="screenshots/club_calendar.png" width="150"> |

| Events | Update Event | Create Event | Event Reports |
| :---: | :---: | :---: | :---: |
| <img src="screenshots/club_events.png" width="150"> | <img src="screenshots/update_event.png" width="150"> | <img src="screenshots/create_event.png" width="150"> | <img src="screenshots/event_reports.png" width="150"> |

| Archived Events | Filing Report |
| :---: | :---: |
| <img src="screenshots/archived_events.png" width="150"> | <img src="screenshots/filing_report.png" width="150"> |

---

## 🏫 Supervisor

| Assign Leader | Select Leader |
| :---: | :---: |
| <img src="screenshots/assign_leader.png" width="150"> | <img src="screenshots/select_leader.png" width="150"> |

---

## 🎓 Student

| Clubs | Registered Clubs | Club Details | Members | Search Clubs |
| :---: | :---: | :---: | :---: | :---: |
| <img src="screenshots/student_clubs.png" width="150"> | <img src="screenshots/my_clubs.png" width="150"> | <img src="screenshots/club_details.png" width="150"> | <img src="screenshots/members.png" width="150"> | <img src="screenshots/clubs_search.png" width="150"> |

| Available Events | Registered Events | Previous Events | Search Events |
| :---: | :---: | :---: | :---: |
| <img src="screenshots/available_events.png" width="150"> | <img src="screenshots/registered_events.png" width="150"> | <img src="screenshots/previous_events.png" width="150"> | <img src="screenshots/events_search.png" width="150"> |

| Profile | Avatar Selection | Profile Info | Filter Clubs | Select Filter |
| :---: | :---: | :---: | :---: | :---: |
| <img src="screenshots/profile.png" width="150"> | <img src="screenshots/avatar_selection.png" width="150"> | <img src="screenshots/profile_info.png" width="150"> | <img src="screenshots/filter_clubs.png" width="150"> | <img src="screenshots/select_filter_clubs.png" width="150"> |

---

### 🎬 Full Application Walkthrough & Video Demos

 https://drive.google.com/drive/folders/1sYJ4lL8f3lPjBfwdcKRKLOhbdCN1DwwN?usp=drive_link

---

## 📦 Packages & Libraries

### 🧠 State Management
- flutter_bloc
- bloc
- equatable
- rxdart

### 🏗️ Architecture & Dependency Injection
- get_it
- injectable
- injectable_generator
- build_runner

### 🌐 Backend & APIs
- supabase_flutter
- dio
- multiple_result

### 🔐 Authentication & Security
- flutter_secure_storage
- envied
- envied_generator
- flutter_dotenv

### 🧩 Navigation & Routing
- go_router

### 🎨 UI & UX
- sizer
- gap
- google_nav_bar
- loading_animation_widget
- table_calendar
- pin_code_fields
- time_picker_spinner_pop_up
- flutter_pdfview

### 📂 File Handling & Storage
- file_picker
- path_provider
- uuid
- url_launcher

### 📱 Device & App Information
- device_info_plus
- package_info_plus
- get_storage

### 🛠️ Code Generation & Serialization
- freezed
- freezed_annotation
- json_annotation
- json_serializable

### 🎯 Flutter & Material
- cupertino_icons
- flutter_launcher_icons

---

# ⚙️ Setup

```bash
git clone https://github.com/flutter-gg-2026/capstone-ll-m_group.git

flutter pub get

flutter run
```

---

# 👨‍💻 Team Members

| Name     | Position          |
| -------- | ----------------- |
| Manhal Alsubaie | Flutter Developer & UI/UX |
| Moayad Batwa | Flutter Developer |
| Moaid Alshamarani | Flutter Developer  |

---

# 💙 Built With Passion Using Flutter
