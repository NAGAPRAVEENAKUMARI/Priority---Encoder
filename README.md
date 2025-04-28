# Priority---Encoder

An Encoder is a combinational logic circuit that compresses 2ⁿ input lines into n output lines, producing a unique binary code corresponding to the active input.

If multiple inputs are active, basic encoders may generate invalid outputs (unless designed with priority).

If we  have n inputs, the encoder will generate a binary code of size log₂(n) bits.

It performs the reverse operation of a Decoder.

For example:

4 inputs → 2 outputs (because 2² = 4)

8 inputs → 3 outputs (because 2³ = 8)

One input line is HIGH (logic 1) at a time.

The encoder generates a binary code that represents the position or number of the active input.

Truth Table governs mapping between active inputs and binary outputs.

# Purpose / Why We Use Encoders

**Data Compression:** Converts multiple inputs into a small number of binary bits.

**Efficient Communication:** Reduces hardware complexity (fewer lines to transmit).

**Device Addressing:** Used to generate coded addresses for memory, I/O devices.

**Input Recognition:** Used in applications like keyboards, control panels, and sensor networks to detect which input line is active.

# Types of Encoders

Encoder Type | Description

Basic Encoder | Single active input, simple output generation.

Priority Encoder | Allows multiple active inputs; encodes the highest-priority input.

Decimal-to-BCD Encoder | Converts decimal inputs (0–9) into Binary Coded Decimal (BCD) format.

Keyboard Encoder | Specialized encoder used to handle and encode multiple keypresses efficiently.

## 📈 4x2 , 8x3 (octal to binary) Encoder Figure

Below is the block diagram representing the 4x2 and 8x3  Encoder:


![Image](https://github.com/user-attachments/assets/57c53704-0b5b-4ab1-9f56-d40bf49a3e8a)


![Image](https://github.com/user-attachments/assets/7f584e16-f54e-4553-8b39-41e4e6845d92)



## priority encoder: 

A Priority Encoder encodes multiple active inputs by producing the binary code of the highest-priority input, ensuring valid and conflict-free output for complex digital systems.

A Priority Encoder is a specialized type of encoder that not only generates a binary code for active inputs but assigns priority to inputs:

 Higher-priority inputs are encoded first, regardless of lower inputs being active.

Multiple inputs can be active simultaneously. The input with the highest priority determines the output.

# Why We Use Priority Encoders:

**Resolve conflicts** when multiple inputs are active at the same time.

**Guarantee valid output** by ensuring only the highest-priority input is encoded.

**Essential in systems** like interrupt controllers, keyboard interfaces, and multitasking processors.


Each input line has a fixed priority order (e.g., D7 > D6 > D5 > ... > D0).

If more than one input is active, the encoder selects the highest-numbered input. Output reflects the binary code of the highest active input.

Often includes a valid output signal (V) to indicate whether any input is active.

Basic Encoder → Good for one-input active systems.

Priority Encoder → Must be used where multiple inputs can be active simultaneously.

## 📈 4x2 , 8x3  Priority Encoder Figure

Below is the block diagram representing the 4x2 , 8x3  Priority Encoder:


![Image](https://github.com/user-attachments/assets/2a5c0c4d-fe1a-4917-b626-02850faa53d6)


![Image](https://github.com/user-attachments/assets/222e485b-cdbe-485a-9202-d2f1b3cd15a7)





