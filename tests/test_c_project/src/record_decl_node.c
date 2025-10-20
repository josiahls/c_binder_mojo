#include "../include/record_decl_node.h"
#include <stddef.h>

int test_codec_state(struct CodecState* cs) {
    if (cs == NULL) return -1;
    return cs->count + cs->state + cs->errcode + cs->x + cs->y;
}

