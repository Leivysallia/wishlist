import json
import os


def combine_json_files(file_path1, file_path2, output_file_path):
    """Combines two JSON files into a single JSON file.

    Args:
        file_path1: Path to the first JSON file.
        file_path2: Path to the second JSON file.
        output_file_path: Path to the output JSON file.
    """
    data = []

    with open(file_path1, 'r') as f1:
        try:
            data1 = json.load(f1)
            if isinstance(data1, list):
              data.extend(data1)
            else:
              data.append(data1)
        except json.JSONDecodeError:
            print(f"Error decoding JSON in {file_path1}")
            return

    with open(file_path2, 'r') as f2:
        try:
            data2 = json.load(f2)
            if isinstance(data2, list):
              data.extend(data2)
            else:
              data.append(data2)
        except json.JSONDecodeError:
            print(f"Error decoding JSON in {file_path2}")
            return

    with open(output_file_path, 'w') as outfile:
        json.dump(data, outfile, indent=2)

# Example usage:
file_path1 = './curators/leivysallia/json/Season_10.json'
file_path2 = './curators/leivysallia/json/Season_11.json'
output_file_path = 'fragment_1.json'
combine_json_files(file_path1, file_path2, output_file_path)

file_path1 = './curators/leivysallia/json/Season_14.json'
file_path2 = './curators/leivysallia/json/Season_15.json'
output_file_path = 'fragment_2.json'
combine_json_files(file_path1, file_path2, output_file_path)

file_path1 = './curators/leivysallia/json/Season_22.json'
file_path2 = './curators/leivysallia/json/Season_23.json'
output_file_path = 'fragment_3.json'
combine_json_files(file_path1, file_path2, output_file_path)

file_path1 = './curators/leivysallia/json/Season_24.json'
file_path2 = './curators/leivysallia/json/Season_25.json'
output_file_path = 'fragment_4.json'
combine_json_files(file_path1, file_path2, output_file_path)

file_path1 = 'fragment_1.json'
file_path2 = 'fragment_2.json'
output_file_path = 'fragment_5.json'
combine_json_files(file_path1, file_path2, output_file_path)

file_path1 = 'fragment_3.json'
file_path2 = 'fragment_4.json'
output_file_path = 'fragment_6.json'
combine_json_files(file_path1, file_path2, output_file_path)

file_path1 = 'fragment_5.json'
file_path2 = 'fragment_6.json'
output_file_path = 'Revia_Scarlet.json'
combine_json_files(file_path1, file_path2, output_file_path)

os.remove('fragment_1.json')
os.remove('fragment_2.json')
os.remove('fragment_3.json')
os.remove('fragment_4.json')
os.remove('fragment_5.json')
os.remove('fragment_6.json')
