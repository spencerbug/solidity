pragma experimental ABIEncoderV2;

contract C {
    struct S {
        uint32 a;
        uint128 b;
        uint256 c;
    }

    S s;

    function f() external returns (uint32, uint128, uint256) {
        S memory m = S(42, 23, 34);
        s = m;
        return (s.a, s.b, s.c);
    }
}

// ====
// compileViaYul: also
// ----
// f() -> 42, 23, 34
