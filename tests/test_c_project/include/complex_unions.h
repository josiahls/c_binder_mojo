#define mjMAXUIMULTI    35
#define mjMAXUIEDIT     7
#define mjMAXUIRECT     25
#define mjMAXUINAME     40


struct mjuiItemSingle_ {
    int modifier;
    int shortcut;
};


struct mjuiItemMulti_ {
    int nelem;
    char name[mjMAXUIMULTI][mjMAXUINAME];
};


struct mjuiItemSlider_ {
    double range[2];
    double divisions;
};


struct mjuiItemEdit_ {
    int nelem;
    double range[mjMAXUIEDIT][2];
};


struct mjuiItem_ {
    int type;
    char name[mjMAXUINAME];

    union {
      struct mjuiItemSingle_ single;
      struct mjuiItemMulti_ multi;
      struct mjuiItemSlider_ slider;
      struct mjuiItemEdit_ edit;
    };

    int skip;
};
typedef struct mjuiItem_ mjuiItem;

union __atomic_wide_counter {
    unsigned long long __value64;
};
