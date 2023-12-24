          # Register
  V_set: "0x00"    # Voltage Setting          Volt    R/W
  i_set: "0x01"    # Current Setting          Ampere  R/W
  VOUT: "0x02"     # Voltage value display    Voltage  R
  IOUT: "0x03"     # Current value display    Ampere   R
  power: "0x04"    # Power in Watt Output     Watt     R
  UIN: "0x05"      # Input Voltage            Voltage  R
  AH_LOW: "0x06"   # Output AH low 16 bits    mAH      R
  AH_HIGH: "0x07"  # Output AH high 16 bits   mAH      R
  WH_LOW: "0x08"   # Output WH low 16 bits    mWH      R
  WH_HIGH: "0x09"  # Output WH high 16 bits   mWH      R
  OUT_H: "0x0A"    # Open Time Hours          Hours    R
  OUT_M: "0x0B"    # Open Time Minutes        Minutes  R
  OUT_S: "0x0C"    # Open Time Seconds        Seconds  R
  t_in: "0x0D"     # internal temperatur      Celsius  R
  t_ex: "0x0E"     # externe temeratur        Celsius  R   external Sensor needed
  lock: "0x0F"     # Key Lock                         R/W
      # 0 = unlock
      # 1 = lock
  PROTECT: "0x10"  # Protect Status           Status   R  
      # 0 = normal
      # 1 = OVP  Over Voltage Protected
      # 2 = OCP  Over Current Protected
      # 3 = OPP  Over Power Protected
      # 4 = LVP
      # 5 = OAH
      # 6 = OHP
      # 7 = OTP  Over tempreture Protected
      # 8 = OEP
      # 9 = OWH
      #10 = ICP
  CVCC: "0x11"     # Constant voltage and constant current   Stage R
  ONOFF: "0x12"
  baudrate: "0x19" # baudrate                         R/W
      # 0 = ?
      # 1 = ?
      # 2 = ?
      # 3 = ?
      # 4 = ?
      # 5 = ?
      # 6 = 115200
  sleep: "0x15"    #  ??
  model: "0x16"    #  Model
  version: 0x17"   #  Version
  M050: "0x50"
  M051: "0x51"
  M052: "0x52"
  M053: "0x53"
  M054: "0x54"
  M055: "0x55"    # Over power protection value
  M056: "0x56"
  M057: "0x57"    # Maximum output duration—minutes
  M058: "0x58"
  M059: "0x59"
  M05C: "0x5C"     # Over Temperatur Protect Set     Celsius    R/W
