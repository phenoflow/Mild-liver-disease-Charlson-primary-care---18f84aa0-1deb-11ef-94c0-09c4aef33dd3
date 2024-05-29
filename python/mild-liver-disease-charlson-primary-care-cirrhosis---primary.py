# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"J615H00","system":"readv2"},{"code":"J612.11","system":"readv2"},{"code":"J615111","system":"readv2"},{"code":"J615812","system":"readv2"},{"code":"J615z13","system":"readv2"},{"code":"J615711","system":"readv2"},{"code":"5719HP","system":"readv2"},{"code":"5719CL","system":"readv2"},{"code":"C350012","system":"readv2"},{"code":"J615z12","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('mild-liver-disease-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mild-liver-disease-charlson-primary-care-cirrhosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mild-liver-disease-charlson-primary-care-cirrhosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mild-liver-disease-charlson-primary-care-cirrhosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
