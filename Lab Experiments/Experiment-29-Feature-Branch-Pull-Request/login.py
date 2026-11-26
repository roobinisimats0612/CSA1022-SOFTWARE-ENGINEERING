def login(username: str, password: str) -> str:
    if username == "admin" and password == "1234":
        return "Login successful"
    return "Invalid username or password"


if __name__ == "__main__":
    print(login("admin", "1234"))
    print(login("guest", "0000"))
