pragma experimental ABIEncoderV2;

contract C {
    struct S {
        uint32 a;
        uint128 b;
        uint256 c;
    }

    S s = S(42, 23, 34);

    function f() external returns (uint32, uint128, uint256) {
        S memory m = s;
        return (m.a, m.b, m.c);
    }
}

// ====
// compileViaYul: also
// ----
// f() -> 42, 23, 34
