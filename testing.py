import json


def merge_json_files(file_paths):
    merged_data = [json.load(open(path, 'r')) for path in file_paths]
    return merged_data


file_paths = ["./curators/leivysallia/json/Season_10.json", "./curators/leivysallia/json/Season_11.json",
              "./curators/leivysallia/json/Season_14.json", "./curators/leivysallia/json/Season_15.json",
              "./curators/leivysallia/json/Season_22.json", "./curators/leivysallia/json/Season_23.json",
              "./curators/leivysallia/json/Season_24.json", "./curators/leivysallia/json/Season_25.json"]
output_file = "merged.json"
merged_data = merge_json_files(file_paths)
with open(output_file, 'w') as outfile:
    json.dump(merged_data, outfile)
print(merged_data)
