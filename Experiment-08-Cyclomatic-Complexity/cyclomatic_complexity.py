def cyclomatic_complexity(edges: int, nodes: int, predicates: int) -> tuple[int, int]:
    v_graph = edges - nodes + 2
    v_pred = predicates + 1
    return v_graph, v_pred


if __name__ == "__main__":
    E, N, P = 17, 13, 5
    v1, v2 = cyclomatic_complexity(E, N, P)
    print(f"E = {E}, N = {N}, P = {P}")
    print(f"V(G) = E - N + 2 = {v1}")
    print(f"V(G) = P + 1     = {v2}")
    assert v1 == v2 == 6
    print("Verified: 6 linearly independent paths.")
