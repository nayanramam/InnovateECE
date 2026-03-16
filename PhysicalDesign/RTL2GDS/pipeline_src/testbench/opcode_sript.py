#! /bin/python3
import sys

def generate_verilog_mem():
    print("Paste your hex values (one per line, e.g., 0x003100b3).")
    print("Press Ctrl+D (Unix) or Ctrl+Z (Win) when finished:")
    
    # Read all lines from stdin
    try:
        input_data = sys.stdin.read().split()
    except EOFError:
        input_data = []

    current_idx = 0
    base_path = "core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM"

    for hex_val in input_data:
        # Clean the input (remove '0x' and any commas/whitespace)
        clean_hex = hex_val.lower().replace("0x", "").strip()
        
        # Ensure it's 8 characters (4 bytes)
        if len(clean_hex) != 8:
            print(f"// Warning: Skipping invalid hex length: {hex_val}", file=sys.stderr)
            continue

        print(f"\n    // {hex_val}{' - First' if current_idx == 0 else ''}")
        
        # Split into 4 bytes (Big Endian as per your example)
        # 0x003100b3 -> 00, 31, 00, b3
        for i in range(0, 8, 2):
            byte = clean_hex[i:i+2]
            print(f"    {base_path}[{current_idx}] = 8'h{byte};")
            current_idx += 1

if __name__ == "__main__":
    generate_verilog_mem()