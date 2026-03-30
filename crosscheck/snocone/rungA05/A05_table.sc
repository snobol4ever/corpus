// A05_table.sc — create table, set and get keyed values
t = TABLE();
t['name'] = 'Alice';
t['age'] = 30;
t['lang'] = 'SNOBOL4';
OUTPUT = t['name'];
OUTPUT = t['age'];
OUTPUT = t['lang'];
