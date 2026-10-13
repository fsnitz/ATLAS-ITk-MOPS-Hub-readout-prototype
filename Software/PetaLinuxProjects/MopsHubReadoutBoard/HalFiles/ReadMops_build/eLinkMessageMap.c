#include <libuio.h>
#include <stdio.h>
#include <stdlib.h>

#include <eLinkMessageMap.h>

// for register map: eLinkMessageMap

struct uio_info_t*  eLinkMessageMap_open (unsigned int devnum)
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


  // at register: ControlnByte01

                void eLinkMessageMap_write_ControlnByte01_eLinkWrite_en (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_ControlnByte01_IndexPart1 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_ControlnByte01_Byte0 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_ControlnByte01_Hub_select (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_ControlnByte01_Node_id (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_ControlnByte01_CAN_code (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          0 /* address offset */,
          value);
      }
      

  // at register: Byte25

                void eLinkMessageMap_write_Byte25_Byte5 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          4 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_Byte25_Byte4 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          4 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_Byte25_SubIndex (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          4 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_Byte25_IndexPart2 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          4 /* address offset */,
          value);
      }
      

  // at register: Byte67

                void eLinkMessageMap_write_Byte67_Byte7 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          8 /* address offset */,
          value);
      }
                    void eLinkMessageMap_write_Byte67_Byte6 (struct uio_info_t* uio_info, uint32_t value)
      {
        uio_write32 (
          uio_info, 
          0 /*map*/, 
          8 /* address offset */,
          value);
      }
      

  // at register: ReadReg0

            uint32_t eLinkMessageMap_read_ReadReg0_eLinkRead_en (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg0_IndexPart1 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg0_Byte0 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg0_Hub_select (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg0_Node_id (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg0_CAN_code (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
          

  // at register: ReadReg1

            uint32_t eLinkMessageMap_read_ReadReg1_Byte5 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg1_Byte4 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg1_SubIndex (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg1_IndexPart2 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
          

  // at register: ReadReg2

            uint32_t eLinkMessageMap_read_ReadReg2_Byte7 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          20 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
                    uint32_t eLinkMessageMap_read_ReadReg2_Byte6 (struct uio_info_t* uio_info)
      {
        uint32_t value;
        if (uio_read32 (
          uio_info, 
          0 /*map*/, 
          20 /* address offset */,
          &value))
          {
            printf("problem reading");
            abort();
          };
        return value;
      }
          
