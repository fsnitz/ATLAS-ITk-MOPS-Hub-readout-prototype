#include <stdexcept>
#include <iostream>
#include <cmath>
#include <string.h>

#include <libuio.h>
#include <ELinkMessageMap.hpp>

// for register map: eLinkMessageMap

/** Opens uio-mapped component by uio device number */
ELinkMessageMap::ELinkMessageMap (unsigned int devnum)
{
  m_uioInfo = uio_find_by_uio_num(devnum);
  if (!m_uioInfo)
    throw std::runtime_error("uio_find_by_uio_num with devnum " + std::to_string(devnum) + " failed.");

  std::cout << "ELinkMessageMap ctr. " 
    << "Found requested device with ids: " << uio_get_major(m_uioInfo) << "," << uio_get_minor(m_uioInfo) << std::endl;
  if (uio_open(m_uioInfo))
    throw std::runtime_error("uio_open failed.");
}

/** Opens uio-mapped component by uio device number */
ELinkMessageMap::ELinkMessageMap (const std::string& uioDeviceName)
{
  char* c_string;
  c_string = strdup(uioDeviceName.c_str());
  m_uioInfo = uio_find_by_uio_name(c_string);
  if (!m_uioInfo)
    throw std::runtime_error("uio_find_by_uio_name with device name " + uioDeviceName + " failed.");

  std::cout << "ELinkMessageMap ctr. " 
    << "Found requested device with ids: " << uio_get_major(m_uioInfo) << "," << uio_get_minor(m_uioInfo) << std::endl;
  if (uio_open(m_uioInfo))
    throw std::runtime_error("uio_open failed.");
}

ELinkMessageMap::~ELinkMessageMap ()
{
  uio_close(m_uioInfo);
}


  // at register: ControlnByte01
                void ELinkMessageMap::writeControlnByte01ELinkWriteEn (uint32_t value){
        uint32_t bitWidth = 1;
        uint8_t bitOffset = 0;
        _ELinkWriteEn_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _ELinkWriteEn_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        _ELinkWriteEn_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeControlnByte01IndexPart1 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 1;
        _IndexPart1_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _IndexPart1_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        _IndexPart1_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeControlnByte01Byte0 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 9;
        _Byte0_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _Byte0_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        _Byte0_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeControlnByte01HubSelect (uint32_t value){
        uint32_t bitWidth = 3;
        uint8_t bitOffset = 17;
        _HubSelect_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _HubSelect_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        _HubSelect_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeControlnByte01NodeId (uint32_t value){
        uint32_t bitWidth = 7;
        uint8_t bitOffset = 20;
        _NodeId_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _NodeId_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        _NodeId_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeControlnByte01CANCode (uint32_t value){
        uint32_t bitWidth = 4;
        uint8_t bitOffset = 27;
        _CANCode_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _CANCode_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        _CANCode_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
  

  // at register: Byte25
                void ELinkMessageMap::writeByte25Byte5 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 0;
        _Byte5_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _Byte5_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        4 /* address offset */,
        _Byte5_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeByte25Byte4 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 8;
        _Byte4_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _Byte4_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        4 /* address offset */,
        _Byte4_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeByte25SubIndex (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 16;
        _SubIndex_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _SubIndex_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        4 /* address offset */,
        _SubIndex_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeByte25IndexPart2 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 24;
        _IndexPart2_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _IndexPart2_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        4 /* address offset */,
        _IndexPart2_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
  

  // at register: Byte67
                void ELinkMessageMap::writeByte67Byte7 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 0;
        _Byte7_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _Byte7_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        8 /* address offset */,
        _Byte7_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
                void ELinkMessageMap::writeByte67Byte6 (uint32_t value){
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 8;
        _Byte6_v = _isolateBitsForWrite(value, bitWidth, bitOffset, _Byte6_v);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        8 /* address offset */,
        _Byte6_v))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
  

  // at register: ReadReg0
            uint32_t ELinkMessageMap::readReadReg0ELinkReadEn ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 1;
        uint8_t bitOffset = 0;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg0IndexPart1 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 1;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg0Byte0 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 9;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg0HubSelect ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 3;
        uint8_t bitOffset = 17;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg0NodeId ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 7;
        uint8_t bitOffset = 20;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg0CANCode ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          12 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 4;
        uint8_t bitOffset = 27;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
  

  // at register: ReadReg1
            uint32_t ELinkMessageMap::readReadReg1Byte5 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 0;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg1Byte4 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 8;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg1SubIndex ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 16;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg1IndexPart2 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          16 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 24;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
  

  // at register: ReadReg2
            uint32_t ELinkMessageMap::readReadReg2Byte7 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          20 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 0;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
            uint32_t ELinkMessageMap::readReadReg2Byte6 ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          20 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 8;
        uint8_t bitOffset = 8;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
  

// Takes value and returns the isolated bits specified by bitWidth and bitOffset. Shifts the bits to 0th position.
uint32_t ELinkMessageMap::_isolateBitsForRead(uint32_t value, uint32_t bitWidth, uint8_t bitOffset){
    uint32_t bitMask = (1 << bitWidth) -1; // 1's on the first 'bitWidth' fields.
    bitMask = bitMask << bitOffset;
    return ((value & bitMask) >> bitOffset);
}

// Takes and old value and replaces the specified bits defined by value, bitWidth and bitOffset.
uint32_t ELinkMessageMap::_isolateBitsForWrite(uint32_t value, uint32_t bitWidth, uint8_t bitOffset, uint32_t oldValue){
    uint32_t bitMask = (1 << bitWidth) -1; // 1's on the first 'bitWidth' fields.
    bitMask = bitMask << bitOffset;
    return((oldValue & (~bitMask)) | (value<<bitOffset)); // Return oldvalue with the correct bits replaced.
}