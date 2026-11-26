def login(username: str, password: str) -> str:
    users = {"admin": "admin123", "student": "pass123"}
    if users.get(username) == password:
        return "Login successful"
    return "Invalid credentials"
