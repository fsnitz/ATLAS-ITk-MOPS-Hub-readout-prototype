#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

struct uio_info_t;

// for register map: PLtoPS_Test

struct uio_info_t* PLtoPS_Test_open (unsigned int devnum);


  // at register: Interface

            uint32_t PLtoPS_Test_read_Interface_LED (struct uio_info_t* uio_info);
              void PLtoPS_Test_write_Interface_LED (struct uio_info_t* uio_info, uint32_t value);
      

  // at register: Heartbeat

            uint32_t PLtoPS_Test_read_Heartbeat_heartbeat (struct uio_info_t* uio_info);
          

#ifdef __cplusplus
}
#endif