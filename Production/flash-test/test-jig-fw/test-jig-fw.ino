// 74HC595 Pins
#define SR_nOE  8   // B4
#define SR_SER  9   // B5
#define SR_CLK  12  // D6
#define SR_RCLK 6   // D7
#define SR_nCLR 4   // D4

// Encoder Pins
#define ENC_1_SW  10  // B6
#define ENC_2_SW  19  // F0

#define ENC_1_A   5   // C6
#define ENC_1_B   13  // C7

#define ENC_2_A   17  // F4
#define ENC_2_B   18  // F1

#define CLOCKWISE 1
#define ANTICLOCK 2

// DUT RST
#define DUT_nRST    PB0
#define DUT_nRST_P  PORTB

// Commands
#define HARD_RESET  255
#define HIGH_Z      128

// Non Arduino Pin IO
#define dirOut(port,pin) 	  (*(&port-1)) |= (1<<(pin))
#define dirIn(port,pin) 	  (*(&port-1)) &= ~(1<<(pin))
#define clearBit(port,pin) 	(port) &= ~(1<<(pin))
#define setBit(port,pin) 	  (port) |= (1<<(pin))

void press_key(uint8_t key);
void shift_out(uint16_t bitstream);
void rotate_encoder(uint8_t encoder, uint8_t dir);

void setup() 
{
  // Shift Reg
  pinMode(SR_nOE, OUTPUT);
  pinMode(SR_SER, OUTPUT);
  pinMode(SR_nCLR, OUTPUT);
  pinMode(SR_CLK, OUTPUT);
  pinMode(SR_RCLK, OUTPUT);

  // Encoders
  pinMode(ENC_1_SW, OUTPUT);
  pinMode(ENC_2_SW, OUTPUT);
  pinMode(ENC_1_B, OUTPUT);
  pinMode(ENC_2_A, OUTPUT);
  pinMode(ENC_2_B, OUTPUT);

  // DUT Reset
  dirIn(DUT_nRST_P, DUT_nRST);

  // SR should be high Z
  digitalWrite(SR_nOE, HIGH);
  digitalWrite(SR_nCLR, HIGH);

  // Serial
  Serial.begin(115200);
}

void loop() 
{
  while (Serial.available() > 0)
  {
    uint8_t data = Serial.parseInt();

    if (data > 0 && data <= 16) // A = 1, P = 16
    {
      press_key(data);
    }
    if (data > 16 && data <= 22) // Q = 17, V = 22
    {
      // Will do encoder things sometime
    }
    else if (data == 128) // High Z all the things
    {
      digitalWrite(SR_nOE, HIGH);
      Serial.println("High Z IO");
    }
    else if (data == HARD_RESET)
    {
      Serial.println("Hard Reset");
      dirOut(DUT_nRST_P, DUT_nRST);
      clearBit(DUT_nRST_P, DUT_nRST);
      delay(50);
      setBit(DUT_nRST_P, DUT_nRST);
      dirIn(DUT_nRST_P, DUT_nRST);
    }
  }
}

void press_key(uint8_t key)
{
  Serial.print("Pressing Key: ");
  Serial.println(key, DEC);

  shift_out(1 << (key - 1)); // Convert from A=1 to A=0
  digitalWrite(SR_nOE, LOW);
  delay(50);
  digitalWrite(SR_nCLR, LOW);
  delay(1);
  digitalWrite(SR_nCLR, HIGH);
  digitalWrite(SR_nOE, HIGH); 
}

void shift_out(uint16_t bitstream)
{
  digitalWrite(SR_RCLK, LOW);
  shiftOut(SR_SER, SR_CLK, MSBFIRST, (bitstream & 0xFF00) >> 8); // second byte
  shiftOut(SR_SER, SR_CLK, MSBFIRST, (bitstream & 0xFF));        // first byte
  digitalWrite(SR_RCLK, HIGH);
}