# Note Taker

## Description
**Note Taker** is a web-based app for creating, editing, and managing notes. Built with **Java EE (Jakarta EE)**, **Hibernate**, and **JSP/Servlets**, it features a **Bootstrap**-styled UI.

## Features
- Create, update, and delete notes.
- View all saved notes.
- Responsive interface.

## Technologies Used
- **Java EE (Jakarta EE)**
- **Hibernate**
- **JSP & Servlets**
- **Bootstrap**
- **MySQL**
- **Git & GitHub**

## Project Structure
```
NoteTaker/
│── src/
│   ├── com/entities/        # Note entity
│   ├── com/servlets/        # Servlets (Save, Update, Delete)
│   ├── com/helper/          # Hibernate utils
│── WebContent/
│   ├── all_notes.jsp        # Display notes
│   ├── add_notes.jsp        # Add notes
│   ├── index.jsp            # Home page
│   ├── NavBar.jsp           # Navigation bar
│   ├── all_js_css.jsp       # Bootstrap & JS includes
│── pom.xml                  # Dependencies
│── README.md                # Documentation
```

## Installation & Setup
### Prerequisites
- JDK
- Apache Tomcat
- MySQL
- Eclipse IDE
- Hibernate ORM

### Setup Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/NoteTaker.git
   ```
2. Open in **Eclipse IDE**.
3. Configure **Tomcat Server**.
4. Update `hibernate.cfg.xml` with database details.
5. Run on **Tomcat**.
6. Access at:
   ```
   http://localhost:8080/NoteTaker
   ```

## Database Configuration
Create a MySQL database `notetaker` and table:
```sql
CREATE TABLE notes (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    content TEXT,
    addedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Contribution
1. Fork the repo.
2. Create a new branch:
   ```sh
   git checkout -b feature-branch
   ```
3. Commit changes:
   ```sh
   git commit -m "Added new feature"
   ```
4. Push and submit a **Pull Request**.


