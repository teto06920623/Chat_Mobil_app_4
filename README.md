# 💬 Flutter Chat Mobile App

A responsive, interactive, and modern **Chat Application Interface** built with **Flutter**. This project showcases a clean messaging UI, featuring a dynamic contact list and a detailed conversation screen with distinct message bubbles.

## 📸 Screenshots

<div align="center">
  <table style="border: none; border-collapse: collapse;">
    <tr>
      <td align="center" style="border: none;">
        <img src="https://github.com/user-attachments/assets/2790d7a4-4265-4dd5-a506-39f2b772a228" width="250" alt="Chat List Screen" />
        <br /><sub><strong>Chat List / Contacts</strong></sub>
      </td>
      <td align="center" style="border: none;">
        <img src="https://github.com/user-attachments/assets/7241ba00-d499-424c-8416-5b311dba8c2b" width="250" alt="Conversation Screen" />
        <br /><sub><strong>Conversation Detail</strong></sub>
      </td>
    </tr>
  </table>
</div>

## ✨ Features

- **User List:** Scrollable list of contacts displaying profile pictures, names, and last message previews.
- **Chat Interface:**
  - Distinct **Message Bubbles** styling for sender (right) and receiver (left).
  - Modern input field with a send button.
  - Avatar display using `CircleAvatar`.
- **Responsive UI:** Optimized layout that adapts to various screen sizes.
- **Clean Architecture:** Separated logic for screens, models, and widgets.

## 🛠️ Technologies Used

- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **Widgets:** `ListView.builder`, `ListTile`, `CircleAvatar`, `Container`.

## 📂 Project Structure

```text
lib/
├── main.dart            # Application Entry Point
├── screens/
│   ├── chat_list_screen.dart   # Home screen (Users List)
│   └── chat_detail_screen.dart # Chat Room (Conversation)
├── models/
│   └── message_model.dart      # Data model for Users & Messages
└── widgets/
    └── message_bubble.dart     # Custom Widget for Message UI
