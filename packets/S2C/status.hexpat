#pragma combinerName Status
enum StatusTextFlags : u8 {
    HIDE_STATUS_TEXT_PERCENT = 0x01,
    STATUS_TEXT_HAS_SHADOWS = 0x02,
    SERVER_WANTS_TO_RUN_CHECK_BYTES_IN_CLIENT_LOOP_THREAD = 0x04
};

struct status {
    s32 statusMax;
    NMNetworkText statusText;
    StatusTextFlags statusTextFlags;
};