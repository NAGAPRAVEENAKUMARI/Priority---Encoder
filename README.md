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
![Image](https://github.com/user-attachments/assets/57c53704-0b5b-4ab1-9f56-d40bf49a3e8a)
