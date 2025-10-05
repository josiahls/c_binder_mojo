#pragma once

typedef enum {
    PYMEM_DOMAIN_RAW,
    PYMEM_DOMAIN_MEM, 
    PYMEM_DOMAIN_OBJ
} PyMemAllocatorDomain;


int use_enum_value(PyMemAllocatorDomain domain);