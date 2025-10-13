#pragma once

// Anonymous enum in typedef - this should trigger AnonymousDeclarationNode
typedef enum {
    ANON_VALUE_A,
} AnonymousEnumType;

// Another anonymous enum - this should get lambda_2 if lambda naming increments properly
enum {
    ANON_VALUE_B,
    ANON_VALUE_C,
};

// Function declaration that should NOT be paired with the enum above
int some_function(int x);
