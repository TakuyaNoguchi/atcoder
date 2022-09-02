S = input()
at_home = True

if 'N' in S and not 'S' in S: at_home = False
if 'S' in S and not 'N' in S: at_home = False
if 'W' in S and not 'E' in S: at_home = False
if 'E' in S and not 'W' in S: at_home = False

if at_home:
    print('Yes')
else:
    print('No')