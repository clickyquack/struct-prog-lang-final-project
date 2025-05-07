// Error Handling Tests

print("Testing error handling features...");

// Test try-catch
print("\nTest 1: Basic try-catch");
try {
    x = 1 / 0;
} catch (e) {
    print("Caught error:");
    print(e.type);
    print(e.message);
}

// Test type error
print("\nTest 2: Type errors");
try {
    x = "hello" + 42;
} catch (e) {
    print("Caught type error:");
    print(e.type);
    print(e.message);
}

// Test value error
print("\nTest 3: Value errors");
try {
    x = head(42);  // head() requires a list
} catch (e) {
    print("Caught value error:");
    print(e.type);
    print(e.message);
}