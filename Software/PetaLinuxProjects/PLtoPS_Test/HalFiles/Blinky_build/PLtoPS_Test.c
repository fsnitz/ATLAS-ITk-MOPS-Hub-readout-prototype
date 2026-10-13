#include <libuio.h>
#include <stdio.h>
#include <stdlib.h>

#include <PLtoPS_Test.h>

// for register map: PLtoPS_Test

struct uio_info_t*  PLtoPS_Test_open (unsigned int devnum)
{
  struct uio_info_t* uio_info = uio_find_by_uio_num(devnum);
  if (!uio_info)
  {
    printf ("ERROR on uio_find_by_uio_num failed: %x\n ", uio_info);
    return 0;
  }
  printf ("Found device on device ids: %d:%d\n", uio_get_major(uio_info), uio_get_minor(uio_info));
  if (uio_open(uio_info))
  {
    printf ("ERROR on uio_open!");
    return 0;
  }
  return uio_info;
}


  // at register: Interface

            uint32_t PLtoPS_Test_read_Interface_LED (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
              void PLtoPS_Test_write_Interface_LED (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
      

  // at register: Heartbeat

            uint32_t PLtoPS_Test_read_Heartbeat_heartbeat (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          4 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
          
