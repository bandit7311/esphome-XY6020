text_sensor:
  - platform: template
    name: "Tastensperre"
    lambda: |-
      if (id(keylock).state) {
        return {"locked"};
      } else {
        return {"unlock"};
      }
    update_interval: 10s

  - platform: template
    name: "Protect Status Text"
    lambda: |-
      if (id(protect_state).state == 0) {
        return {"Normal"};  
      } else if(id(protect_state).state == 1) {
        return {"Over Voltage Protected"};
      } else if(id(protect_state).state == 2) {
        return {"Over Current Protected"};
      } else if(id(protect_state).state == 3) {
        return {"Over Power Protected"};
      } else if(id(protect_state).state == 4) {
        return {"LVP"};
      } else if(id(protect_state).state == 5) {
        return {"OAH"};  
      } else if(id(protect_state).state == 6) {
        return {"OHP"};
      } else if(id(protect_state).state == 7) {
        return {"Over Tempreture Protected"};
      } else if(id(protect_state).state == 8) {
        return {"OEP"};
      } else if(id(protect_state).state == 9) {
        return {"OWH"};
      } else if(id(protect_state).state == 10) {
        return {"ICP"};
      } else {
        return {"Error"};
      }
    update_interval: 5s