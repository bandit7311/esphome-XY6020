sensor:
   
  - platform: homeassistant
    name: "shellyPower"
    id: shelly_power
    entity_id: sensor.shellypro3em_0cb815fd43b8_total_active_power
    unit_of_measurement: "W"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01    

  - platform: modbus_controller
    # name: "Protect Status Number"
    id: protect_state
    address: ${PROTECT}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Status"
    accuracy_decimals: 0
    filters:
     - multiply: 1

  - platform: modbus_controller
    name: "Eingestellte Spannung"
    address: ${V_set}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    icon: "mdi:water-percent"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "Spannung am Ausgang"
    address: ${VOUT}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "Eingestellter Strom"
    address: ${i_set}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Ampere"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "Aktueller Strom"
    address: ${IOUT}
    register_type: "holding"
    value_type: U_WORD
    device_class: CURRENT
    #unit_of_measurement: "Ampere"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "Leistung am Ausgang"
    address: ${power}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Watt"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "Eingangsspannung"
    address: ${UIN}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Volt"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "interne Temperatur"
    address: ${t_in}
    register_type: "holding"
    value_type: U_WORD
    device_class: TEMPERATURE
    #unit_of_measurement: "Celsius"
    icon: "mdi:thermometer"
    accuracy_decimals: 2
    filters:
     - multiply: 0.1

  - platform: modbus_controller
    name: "Zeit Ein in Stunden"
    address: ${OUT_H}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Stunden"
    accuracy_decimals: 0
    filters:
     - multiply: 1

  - platform: modbus_controller
    name: "Zeit Ein in Minuten"
    address: ${OUT_M}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Minuten"
    accuracy_decimals: 0
    filters:
     - multiply: 1

  - platform: modbus_controller
    name: "Zeit Ein in Sekunden"
    address: ${OUT_S}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Sekunden"
    accuracy_decimals: 0
    filters:
     - multiply: 1

  - platform: modbus_controller
    name: "M050"
    address: ${M050}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M051 Current Setting"
    address: ${M051}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "A"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M052 Low Voltage Protected"
    address: ${M052}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M053 Over Voltage Protected"
    address: ${M053}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01
     
  - platform: modbus_controller
    name: "M054 Over Current Protect"
    address: ${M054}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "A"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M055 Over Power Protected"
    address: ${M055}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "W"
    accuracy_decimals: 1
    filters:
     - multiply: 1.0

  - platform: modbus_controller
    name: "M056 Maximum Output Time Hours"
    address: ${M056}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Hours"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M057"
    address: ${M057}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M058"
    address: ${M058}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M059"
    address: ${M059}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "V"
    accuracy_decimals: 2
    filters:
     - multiply: 0.01

  - platform: modbus_controller
    name: "M05C Set Over Temreture Protected"
    address: ${M05C}
    register_type: "holding"
    value_type: U_WORD
    unit_of_measurement: "Celsius"
    accuracy_decimals: 2
    filters:
     - multiply: 1.0