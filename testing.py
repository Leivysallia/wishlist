import json
import re


def merge_json_files(file_paths):
    data = [json.load(open(path, 'r')) for path in file_paths]
    return data


intro = r'{"description":"","name":"Revia Scarlet","data":['
outro = r']}'
comma = r','
delete_intro = r'\{.*description.*name.*data":\['
delete_outro = r'\]\}$'
file_paths = ["./curators/leivysallia/json/Season_10.json", "./curators/leivysallia/json/Season_11.json",
              "./curators/leivysallia/json/Season_14.json", "./curators/leivysallia/json/Season_15.json",
              "./curators/leivysallia/json/Season_22.json", "./curators/leivysallia/json/Season_23.json",
              "./curators/leivysallia/json/Season_24.json", "./curators/leivysallia/json/Season_25.json"]
output_file = "merged.json"

for json_file in file_paths:
    with open(json_file, 'r') as bob:
        for line in bob:
            new_line = str(line)
            new_line = re.sub(delete_intro, '', new_line)
            new_line = re.sub(delete_outro, '', new_line)
            new_file = str(json_file)
            new_file = re.sub(r'\.json', '_mod.json', new_file)
            with open(new_file, 'w') as bill:
                bill.write(new_line)

new_file_paths = ["./curators/leivysallia/json/Season_10_mod.json", "./curators/leivysallia/json/Season_11_mod.json",
                  "./curators/leivysallia/json/Season_14_mod.json", "./curators/leivysallia/json/Season_15_mod.json",
                  "./curators/leivysallia/json/Season_22_mod.json", "./curators/leivysallia/json/Season_23_mod.json",
                  "./curators/leivysallia/json/Season_24_mod.json", "./curators/leivysallia/json/Season_25_mod.json"]

temp_list = []
for new_json_file in new_file_paths:
    with open(new_json_file, 'r') as file:
        for line in file:
            temp_list.append(line)

out_data = f'{intro}{temp_list[0]},{temp_list[1]},{temp_list[2]},{temp_list[3]},{temp_list[4]},{temp_list[5]},{temp_list[6]},{temp_list[7]}{outro}'

with open(output_file, 'w') as outfile:
    outfile.write(out_data)

#merged_data = merge_json_files(new_file_paths)
#with open(output_file, 'w') as outfile:
#    json.dump(merged_data, outfile)
#print(merged_data)


