// 74HC595 Pins
#define SR_nOE  8   // B4
#define SR_SER  9   // B5
#define SR_CLK  12  // D6
#define SR_RCLK 6   // D7
#define SR_nCLR 4   // D4

// Encoder Pins
#define ENC_1_SW  10  // B6
#define ENC_2_SW  A5  // F0

#define ENC_1_A   5   // C6
#define ENC_1_B   13  // C7

#define ENC_2_A   A3  // F4
#define ENC_2_B   A4  // F1

#define CLOCKWISE 1
#define ANTICLOCK 2

#define ENC_1     1
#define ENC_2     2

// DUT RST
#define DUT_nRST    PB0
#define DUT_nRST_P  PORTB

// Commands
#define ENTER       64
#define HIGH_Z      128
#define SOFT_RESET  254
#define HARD_RESET  255

// Non Arduino Pin IO
#define dirOut(port,pin) 	  (*(&port-1)) |= (1<<(pin))
#define dirIn(port,pin) 	  (*(&port-1)) &= ~(1<<(pin))
#define clearBit(port,pin) 	(port) &= ~(1<<(pin))
#define setBit(port,pin) 	  (port) |= (1<<(pin))

void press_key(uint8_t key);
void press_enter(void);
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
  pinMode(ENC_1_A, OUTPUT);
  pinMode(ENC_1_B, OUTPUT);
  pinMode(ENC_2_A, OUTPUT);
  pinMode(ENC_2_B, OUTPUT);

  digitalWrite(ENC_1_SW, LOW);
  digitalWrite(ENC_2_SW, LOW);
  digitalWrite(ENC_1_A, HIGH);
  digitalWrite(ENC_1_B, HIGH);
  digitalWrite(ENC_2_A, HIGH);
  digitalWrite(ENC_2_B, HIGH);

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

    if (data >= 1 && data <= 16) // A = 1, P = 16
    {
      if (data == 16)  // If P, we need to wait for tap dance to clear after pressing alpha
      {
        delay(500);
      }
      press_key(data);
      delay(500);
      if (data == 16)  // If P, we need to wait for tap dance to clear after pressing alpha
      {
        delay(500);
      }
      press_enter();
    }
    else if (data > 16 && data <= 22) // Q = 17, V = 22
    {

      if (data == 17)
      {
        Serial.println("Encoder 1, Clockwise");
        rotate_encoder(ENC_1, CLOCKWISE);
        press_enter();
      }
      else if (data == 18)
      {
        Serial.println("Encoder 1, Anticlock");
        rotate_encoder(ENC_1, ANTICLOCK);
        press_enter();
      }
      else if (data == 19)
      {
        Serial.println("Encoder 1, Button");
        digitalWrite(ENC_1_SW, HIGH);
        delay(50);
        digitalWrite(ENC_1_SW, LOW);
        press_enter();
      }
      else if (data == 20)
      {
        Serial.println("Encoder 2, Clockwise");
        rotate_encoder(ENC_2, CLOCKWISE);
        press_enter();
      }
      else if (data == 21)
      {
        Serial.println("Encoder 2, Anticlock");
        rotate_encoder(ENC_2, ANTICLOCK);
        press_enter();
      }
      else if (data == 22)
      {
        Serial.println("Encoder 2, Button");
        digitalWrite(ENC_2_SW, HIGH);
        delay(50);
        digitalWrite(ENC_2_SW, LOW);
        press_enter();
      }
    }
    else if (data == ENTER)
    {
      press_enter();
    }
    else if (data == 128) // High Z all the things
    {
      digitalWrite(SR_nOE, HIGH);
      dirIn(DUT_nRST_P, DUT_nRST);
      Serial.println("High Z IO");
    }
    else if (data == SOFT_RESET)
    {
      Serial.println("Soft Reset");
      press_key(15);
      delay(50);
      press_key(15);
      
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

// Double taps "P" to hit enter
void press_enter(void)
{
  press_key(16);
  delay(50);
  press_key(16);
}

// Presses the given key, with A = 1, P = 16
void press_key(uint8_t key)
{
  Serial.print("Pressing Key: ");
  Serial.println(key, DEC);

  // digitalWrite(SR_nOE, HIGH);
  digitalWrite(SR_nOE, LOW);
  shift_out(1 << (key - 1)); // Convert from A=1 to A=0
  delay(100);
  shift_out(0b0000000000000000); // Clear
}

// Sets keys per input bitstream
void shift_out(uint16_t bitstream)
{
  digitalWrite(SR_RCLK, LOW);
  shiftOut(SR_SER, SR_CLK, MSBFIRST, (bitstream & 0xFF00) >> 8); // second byte
  shiftOut(SR_SER, SR_CLK, MSBFIRST, (bitstream & 0xFF));        // first byte
  digitalWrite(SR_RCLK, HIGH);
}

void rotate_encoder(uint8_t encoder, uint8_t dir)
{

  if (encoder == ENC_1 && dir == CLOCKWISE)
  {
    digitalWrite(ENC_1_B, LOW);
    delay(10);
    digitalWrite(ENC_1_A, LOW);
    delay(10);
    digitalWrite(ENC_1_B, HIGH);
    delay(10);
    digitalWrite(ENC_1_A, HIGH);
    delay(100);
  }
  else if (encoder == ENC_1 && dir == ANTICLOCK)
  {
    digitalWrite(ENC_1_A, LOW);
    delay(10);
    digitalWrite(ENC_1_B, LOW);
    delay(10);
    digitalWrite(ENC_1_A, HIGH);
    delay(10);
    digitalWrite(ENC_1_B, HIGH);
    delay(100);
  }
  else if (encoder == ENC_2 && dir == CLOCKWISE)
  {
    digitalWrite(ENC_2_B, LOW);
    delay(10);
    digitalWrite(ENC_2_A, LOW);
    delay(10);
    digitalWrite(ENC_2_B, HIGH);
    delay(10);
    digitalWrite(ENC_2_A, HIGH);
    delay(100);
  }
  else if (encoder == ENC_2 && dir == ANTICLOCK)
  {
    digitalWrite(ENC_2_A, LOW);
    delay(10);
    digitalWrite(ENC_2_B, LOW);
    delay(10);
    digitalWrite(ENC_2_A, HIGH);
    delay(10);
    digitalWrite(ENC_2_B, HIGH);
    delay(100);
  }
}