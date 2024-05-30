#pragma combinerName connectRequest
struct connectRequest {
    u8 stringLength;
    char version[stringLength] [[name("Version of the connecting client")]];
};