def string_length(s: str) -> int:
    return len(s)


if __name__ == "__main__":
    samples = ["water", "SoftwareEngineering"]
    for sample in samples:
        print(f"Input: {sample!r} -> Total Number of Characters = {string_length(sample)}")
