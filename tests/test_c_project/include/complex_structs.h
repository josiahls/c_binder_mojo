

struct Struct1_ {
    struct {
      float   cameraid;
    } global;
  
    struct {                        
      int   shadowsize;             
    } quality;
} Struct1;

Struct1 make_struct1() {
    return Struct1 {
        .global = {
            .cameraid = 1.0
        },
        .quality = {
            .shadowsize = 10
        }
    };
};


struct Struct2_ {
    struct {
      float   cameraid2;
    } global2;
  
    struct {                        
      int   shadowsize2;             
    } quality2;
} Struct2;

Struct2 make_struct2() {
    return Struct2 {
        .global2 = {
            .cameraid2 = 2.0
        },
        .quality2 = {
            .shadowsize2 = 20
        }
    };
};