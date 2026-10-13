library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eLinkMessageInterface is
    Port (
            -- ### Deconstructed eLink message ###   
           eLinkRxStream : in STD_LOGIC_VECTOR (75 downto 0); 
           ReadIndex1 : out STD_LOGIC_VECTOR (7 downto 0);
           ReadByte0 : out STD_LOGIC_VECTOR (7 downto 0);
           ReadHubID : out std_logic_vector (2 downto 0); 
           ReadNodeID: out std_logic_vector(6 downto 0);
           ReadCanID: out std_logic_vector (3 downto 0); 
           ReadByte4 : out std_logic_vector (7 downto 0);
           ReadByte5: out std_logic_vector (7 downto 0); 
           ReadByte6: out std_logic_vector (7 downto 0);
           ReadByte7: out std_logic_vector (7 downto 0); 
           ReadSubIndex : out std_logic_vector (7 downto 0); 
           ReadIndex2 : out std_logic_vector (7 downto 0); 
           
          -- ### Constructed eLink message ###   
           eLinkTxStream : out STD_LOGIC_VECTOR (75 downto 0);
           WriteIndex1 : in STD_LOGIC_VECTOR (7 downto 0);
           WriteByte0 : in STD_LOGIC_VECTOR (7 downto 0);
           WriteNodeID: in std_logic_vector(6 downto 0);
           WriteCanID: in std_logic_vector (3 downto 0); 
           WriteByte4 : in std_logic_vector (7 downto 0);
           WriteByte5: in std_logic_vector (7 downto 0); 
           WriteByte6: in std_logic_vector (7 downto 0);
           WriteByte7: in std_logic_vector (7 downto 0); 
           WriteSubIndex : in std_logic_vector (7 downto 0); 
           WriteIndex2 : in std_logic_vector (7 downto 0) 
           
           );
end eLinkMessageInterface;

architecture Behavioral of eLinkMessageInterface is

begin
    -- ### Constructed eLink message ###                                                                                         
    eLinkTxStream <= WriteCanID & WriteNodeID & '0' & WriteByte0 & WriteIndex1 & WriteIndex2 
                    & WriteSubindex & WriteByte4 & WriteByte5 & WriteByte6 & WriteByte7;     
    
     -- ### Deconstructed eLink message ### 
      ReadCanID(3 downto 0) <= eLinkRxStream(75 downto 72);
      ReadNodeID(6 downto 0) <= eLinkRxStream(71 downto 65);
      ReadByte0 (7 downto 0) <= eLinkRxStream(63 downto 56);
      ReadIndex1(7 downto 0) <= eLinkRxStream(55 downto 48);
      ReadIndex2(7 downto 0) <= eLinkRxStream(47 downto 40);
      ReadSubIndex(7 downto 0) <= eLinkRxStream(39 downto 32);
      ReadByte4 (7 downto 0) <= eLinkRxStream(31 downto 24);
      ReadByte5 (7 downto 0) <= eLinkRxStream(23 downto 16);
      ReadByte6 (7 downto 0) <= eLinkRxStream(15 downto 8);
      ReadByte7 (7 downto 0) <= eLinkRxStream(7 downto 0);
      
end Behavioral;
