def lexicographically_smallest_swap(s: str) -> str:
    '''Return the lexicographically smallest string using at most one global pair swap.'''
    seen = set()
    for idx, ch in enumerate(s):
        smaller_candidates = [c for c in s[idx + 1 :] if c < ch and c not in seen]
        if smaller_candidates:
            target = min(smaller_candidates)
            table = str.maketrans({ch: target, target: ch})
            return s.translate(table)
        seen.add(ch)
    return s


if __name__ == "__main__":
    for test in ["ccad", "simats", "bbcacad"]:
        print(f"{test} -> {lexicographically_smallest_swap(test)}")
