#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

struct uio_info_t;

// for register map: eLinkMessageMap

struct uio_info_t* eLinkMessageMap_open (unsigned int devnum);


  // at register: ControlnByte01

                void eLinkMessageMap_write_ControlnByte01_eLinkWrite_en (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_ControlnByte01_IndexPart1 (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_ControlnByte01_Byte0 (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_ControlnByte01_Hub_select (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_ControlnByte01_Node_id (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_ControlnByte01_CAN_code (struct uio_info_t* uio_info, uint32_t value);
      

  // at register: Byte25

                void eLinkMessageMap_write_Byte25_Byte5 (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_Byte25_Byte4 (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_Byte25_SubIndex (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_Byte25_IndexPart2 (struct uio_info_t* uio_info, uint32_t value);
      

  // at register: Byte67

                void eLinkMessageMap_write_Byte67_Byte7 (struct uio_info_t* uio_info, uint32_t value);
                    void eLinkMessageMap_write_Byte67_Byte6 (struct uio_info_t* uio_info, uint32_t value);
      

  // at register: ReadReg0

            uint32_t eLinkMessageMap_read_ReadReg0_eLinkRead_en (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg0_IndexPart1 (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg0_Byte0 (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg0_Hub_select (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg0_Node_id (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg0_CAN_code (struct uio_info_t* uio_info);
          

  // at register: ReadReg1

            uint32_t eLinkMessageMap_read_ReadReg1_Byte5 (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg1_Byte4 (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg1_SubIndex (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg1_IndexPart2 (struct uio_info_t* uio_info);
          

  // at register: ReadReg2

            uint32_t eLinkMessageMap_read_ReadReg2_Byte7 (struct uio_info_t* uio_info);
                    uint32_t eLinkMessageMap_read_ReadReg2_Byte6 (struct uio_info_t* uio_info);
          

#ifdef __cplusplus
}
#endif