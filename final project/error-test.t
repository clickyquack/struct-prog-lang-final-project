// Error Handling Tests

print("Testing error handling features...");

// Test try-catch
print("Test 1: Basic try-catch");
try {
    x = 1 / 0;
} catch (e) {
    print("Caught error:");
    print(e.type);
    print(e.message);
}

// Test type error
print("Test 2: Type errors");
try {
    x = "hello" + 42;
} catch (e) {
    print("Caught type error:");
    print(e.type);
    print(e.message);
}

// Test value error
print("Test 3: Value errors");
try {
    head([1, 2, 3], "extra");  // Passing extra argument to trigger ValueError
} catch (e) {
    print("Caught value error:");
    print(e.type);
    print(e.message);
}

// Test throw statement
print("Test 4: Throw statement");
try {
    throw "test error message";
} catch (e) {
    print("Caught thrown error:");
    print(e.type);
    print(e.message);
}

// Test throw with custom error object
print("Test 5: Throw with custom error object");
try {
    throw {"type": "CustomError", "message": "custom error message"};
} catch (e) {
    print("Caught custom error:");
    print(e.type);
    print(e.message);
}

// Test throw with number
print("Test 6: Throw with number");
try {
    throw 42;
} catch (e) {
    print("Caught number error:");
    print(e.type);
    print(e.message);
}