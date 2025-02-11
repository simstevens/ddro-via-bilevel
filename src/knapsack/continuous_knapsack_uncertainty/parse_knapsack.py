def parse_knapsack(file_path):
    ''' Parses a .kp file and returns the knapsack parameters

    Parameters
    -------------
    file_name: string
        path to instance

    Returns
    --------------
    number_of_items: int
        number of items in the knapsack instance
    capacity: int
        capacity of the knapsack
    nom_weights: list
        list of nominal weights of the items
    weight_dev: list
        list of deviations of the weights of the items
    values: list
        list of the values of the items
    b: float
        constant parameter of uncertainty budget
    w: list
        list of weights in uncertainty budget
    f: list
        list of weights in knapsack uncertainty
    '''
    
    # read .kp file
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    # First two lines
    number_of_items = int(lines[1].strip())
    capacity = int(lines[2].strip())

    # Second block - extracting nom_weights, weight_dev, and values
    nom_weights = []
    weight_dev = []
    values = []
    idx = 4
    while lines[idx].strip() and not lines[idx].startswith(' '):
        nom, dev, val = map(float, lines[idx].strip().split())
        nom_weights.append(nom)
        weight_dev.append(dev)
        values.append(val)
        idx += 1

    # Third block - extracting b, w, f
    idx += 2
    b = float(lines[idx].strip())
    idx += 2
    # Parse `w` from the second line onward until the next list
    w_data = ""
    f_data = ""
    
    # Identifying sections by line content
    w_section = False
    f_section = False
    
    for line in lines[idx:]:
        line = line.strip()
        if line.startswith("[") and w_section is False:
            w_section = True
            w_data += line.strip("[] ") + " "
        elif line.startswith("[") and w_section:
            f_section = True
            w_section = False
            f_data += line.strip("[] ") + " "
        elif w_section:
            w_data += line.strip("[] ") + " "
        elif f_section:
            f_data += line.strip("[] ") + " "

    # Convert collected strings into lists of floats
    w = [float(value) for value in w_data.split()]
    f = [float(value) for value in f_data.split()]
   
    
    return number_of_items, capacity, nom_weights, weight_dev, values, b, w, f