#pragma once

// Test for forward declared struct bug
// This reproduces the ImagingCodecStateInstance issue

// Forward declaration with typedef (incomplete type)
typedef struct CodecState *CodecStatePtr;

// Full definition with fields - this should NOT be pruned!
struct CodecState {
    int count;
    int state;
    int errcode;
    int x;
    int y;
};

// Simple function to test the library loads
int test_codec_state(struct CodecState* cs);

