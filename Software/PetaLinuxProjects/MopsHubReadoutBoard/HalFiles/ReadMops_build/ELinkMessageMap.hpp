#pragma once
#include <stdint.h>
#include <string> // std::to_string

struct uio_info_t; // forward-decl

// for register map: eLinkMessageMap

class ELinkMessageMap
{

public:
  /** Opens uio-mapped component by uio device number */
  ELinkMessageMap (unsigned int devnum);
  /** Opens uio-mapped component by uio device name */
  ELinkMessageMap (const std::string& uioDeviceName);
  
  virtual ~ELinkMessageMap ();

  
    // at register: ControlnByte01
                        void writeControlnByte01ELinkWriteEn (uint32_t value);
                              void writeControlnByte01IndexPart1 (uint32_t value);
                              void writeControlnByte01Byte0 (uint32_t value);
                              void writeControlnByte01HubSelect (uint32_t value);
                              void writeControlnByte01NodeId (uint32_t value);
                              void writeControlnByte01CANCode (uint32_t value);
          
  
    // at register: Byte25
                        void writeByte25Byte5 (uint32_t value);
                              void writeByte25Byte4 (uint32_t value);
                              void writeByte25SubIndex (uint32_t value);
                              void writeByte25IndexPart2 (uint32_t value);
          
  
    // at register: Byte67
                        void writeByte67Byte7 (uint32_t value);
                              void writeByte67Byte6 (uint32_t value);
          
  
    // at register: ReadReg0
                  uint32_t readReadReg0ELinkReadEn ();
                              uint32_t readReadReg0IndexPart1 ();
                              uint32_t readReadReg0Byte0 ();
                              uint32_t readReadReg0HubSelect ();
                              uint32_t readReadReg0NodeId ();
                              uint32_t readReadReg0CANCode ();
                
  
    // at register: ReadReg1
                  uint32_t readReadReg1Byte5 ();
                              uint32_t readReadReg1Byte4 ();
                              uint32_t readReadReg1SubIndex ();
                              uint32_t readReadReg1IndexPart2 ();
                
  
    // at register: ReadReg2
                  uint32_t readReadReg2Byte7 ();
                              uint32_t readReadReg2Byte6 ();
                
  
private:
  uio_info_t* m_uioInfo;
                    uint32_t _ELinkWriteEn_v = 0;
                        uint32_t _IndexPart1_v = 0;
                        uint32_t _Byte0_v = 0;
                        uint32_t _HubSelect_v = 0;
                        uint32_t _NodeId_v = 0;
                        uint32_t _CANCode_v = 0;
                              uint32_t _Byte5_v = 0;
                        uint32_t _Byte4_v = 0;
                        uint32_t _SubIndex_v = 0;
                        uint32_t _IndexPart2_v = 0;
                              uint32_t _Byte7_v = 0;
                        uint32_t _Byte6_v = 0;
                                                                                                                                                        uint32_t _isolateBitsForRead(uint32_t value, uint32_t bitWidth, uint8_t bitOffset);
  uint32_t _isolateBitsForWrite(uint32_t value, uint32_t bitWidth, uint8_t bitOffset, uint32_t oldValue);
};