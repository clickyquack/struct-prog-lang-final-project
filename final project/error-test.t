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