import pandas as pd
import numpy as np

# Load the CSV file to inspect its contents and extract hex values
file_path = '/media/sf_vshare/untitled.csv'  # Specify your file path here
data = pd.read_csv(file_path)

# Extract hex values, assuming they are in a specific column
hex_values = []
for col in data.columns:
    # Drop NaN values from the column and find hex values in non-NaN entries
    hex_values += data[col].dropna().astype(str).str.findall(r'0x[0-9A-Fa-f]+').explode().tolist()

# Remove any unwanted 'nan' entries or invalid hex values
hex_values = [val for val in hex_values if isinstance(val, str) and val.lower() != 'nan']

# Print the filtered hex values
print(hex_values)

# # Save these hex values to a file for the user
# output_file = '/media/sf_vshare/output_file.txt'  # Specify your desired output file path
# with open(output_file, 'w') as f:
#     f.write("\n".join(hex_values))

# print(f"Filtered hex values saved to {output_file}")
