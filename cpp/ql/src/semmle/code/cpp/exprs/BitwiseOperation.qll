import semmle.code.cpp.exprs.Expr

/**
 * A C/C++ unary bitwise operation.
 */
abstract class UnaryBitwiseOperation extends UnaryOperation { }

/**
 * A C/C++ complement expression.
 * ```
 * unsigned c = ~a;
 * ```
 */
class ComplementExpr extends UnaryBitwiseOperation, @complementexpr {
  override string getOperator() { result = "~" }

  override int getPrecedence() { result = 15 }

  override string getCanonicalQLClass() { result = "ComplementExpr" }
}

/**
 * A C/C++ binary bitwise operation.
 */
abstract class BinaryBitwiseOperation extends BinaryOperation { }

/**
 * A C/C++ left shift expression.
 * ```
 * unsigned c = a << b;
 * ```
 */
class LShiftExpr extends BinaryBitwiseOperation, @lshiftexpr {
  override string getOperator() { result = "<<" }

  override int getPrecedence() { result = 11 }

  override string getCanonicalQLClass() { result = "LShiftExpr" }
}

/**
 * A C/C++ right shift expression.
 * ```
 * unsigned c = a >> b;
 * ```
 */
class RShiftExpr extends BinaryBitwiseOperation, @rshiftexpr {
  override string getOperator() { result = ">>" }

  override int getPrecedence() { result = 11 }

  override string getCanonicalQLClass() { result = "RShiftExpr" }
}

/**
 * A C/C++ bitwise AND expression.
 * ```
 * unsigned c = a & b;
 * ```
 */
class BitwiseAndExpr extends BinaryBitwiseOperation, @andexpr {
  override string getOperator() { result = "&" }

  override int getPrecedence() { result = 8 }

  override string getCanonicalQLClass() { result = "BitwiseAndExpr" }
}

/**
 * A C/C++ bitwise OR expression.
 * ```
 * unsigned c = a | b;
 * ```
 */
class BitwiseOrExpr extends BinaryBitwiseOperation, @orexpr {
  override string getOperator() { result = "|" }

  override int getPrecedence() { result = 6 }

  override string getCanonicalQLClass() { result = "BitwiseOrExpr" }
}

/**
 * A C/C++ bitwise XOR expression.
 * ```
 * unsigned c = a ^ b;
 * ```
 */
class BitwiseXorExpr extends BinaryBitwiseOperation, @xorexpr {
  override string getOperator() { result = "^" }

  override int getPrecedence() { result = 7 }

  override string getCanonicalQLClass() { result = "BitwiseXorExpr" }
}
