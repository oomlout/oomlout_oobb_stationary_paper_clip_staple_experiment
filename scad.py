import copy
import opsc
import oobb
import oobb_base
import yaml
import os

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    # save_type variables
    if True:
        filter = ""
        #filter = "test"

        kwargs["save_type"] = "none"
        kwargs["save_type"] = "all"
        
        navigation = False
        #navigation = True    

        kwargs["overwrite"] = True
        
        #kwargs["modes"] = ["3dpr", "laser", "true"]
        kwargs["modes"] = ["3dpr"]
        #kwargs["modes"] = ["laser"]

    # default variables
    if True:
        kwargs["size"] = "oobb"
        kwargs["width"] = 1
        kwargs["height"] = 1
        kwargs["thickness"] = 9
        
    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        part_default = {} 
        part_default["project_name"] = "test" ####### neeeds setting
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]
        
        part = copy.deepcopy(part_default)
        p3 = copy.deepcopy(kwargs)
        p3["width"] = 3
        p3["height"] = 3
        p3["thickness"] = 9
        part["kwargs"] = p3
        part["name"] = "base"
        parts.append(part)

        letters = ["A","C","H"]

        for letter in letters:
            part = copy.deepcopy(part)
            p3 = copy.deepcopy(part["kwargs"])
            p3["extra"] = letter
            part["kwargs"] = p3
            parts.append(part)

        
    #make the parts
    if True:
        for part in parts:
            name = part.get("name", "default")            
            extra = part["kwargs"].get("extra", "")
            if filter in name or filter in extra:
                print(f"making {part['name']}")
                make_scad_generic(part)            
                print(f"done {part['name']}")
            else:
                print(f"skipping {part['name']}")


    #generate navigation
    if navigation:
        sort = []
        #sort.append("extra")
        sort.append("name")
        sort.append("width")
        sort.append("height")
        sort.append("thickness")
        
        generate_navigation(sort = sort)


def get_base(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("thickness", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    #pos = copy.deepcopy(pos)
    #pos[2] += -20

    depth_base = 3
    depth_shift = 20
    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    #p3["holes"] = True         uncomment to include default holes
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add oobb plate cutout
    p4 = copy.deepcopy(p3)
    p4["type"] = "n"
    pos1 = copy.deepcopy(pos)
    pos1[0] += 10
    pos1[1] += -10
    pos1[2] += depth_base
    p4["pos"] = pos1
    #p4["m"] = "#"
    oobb_base.append_full(thing,**p4)


    ex = 1
    #add cutouts
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_plate"
    p3["depth"] = depth-depth_base
    p3["width"] = 1 + ex/15
    p3["height"] = 5
    pos1 = copy.deepcopy(pos)
    pos1[0] += 7.5
    pos1[1] += 0
    pos1[2] += depth_base
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    p4 = copy.deepcopy(p3)
    p4["width"] = 5
    p4["height"] = 1 + ex/15
    pos1 = copy.deepcopy(pos)
    pos1[0] += 0
    pos1[1] += -7.5
    pos1[2] += depth_base
    p4["pos"] = pos1
    #p4["m"] = "#"
    oobb_base.append_full(thing,**p4)


    #add holes seperate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_holes"
    p3["both_holes"] = True  
    p3["depth"] = depth + depth_shift
    p3["holes"] = "single"
    locs = []
    locs.append([1,3])
    locs.append([2,1])
    locs.append([3,1])    
    locs.append([2,2])
    locs.append([3,2])

    p3["locations"] = locs
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    #m3 holes
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_holes"
    
    p3["depth"] = depth + depth_shift
    p3["holes"] = "single"
    p3["radius_name"] = "m3"
    locs = []
    locs.append([1,1.5])
    locs.append([1,2.5])
    locs.append([1.5,1])
    locs.append([1.5,2])
    locs.append([1.5,3])
    locs.append([2,1.5])
    locs.append([2,2.5])
    locs.append([2.5,1])
    locs.append([2.5,2])
    locs.append([2.5,3])
    locs.append([3,1.5])
    locs.append([3,2.5])    
    p3["locations"] = locs
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)


    depth_top = 6
    #top piece
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"rounded_rectangle"
    w = 34
    h = 34
    d = depth_top
    size = [w,h,d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos)
    pos1[0] += 5
    pos1[1] += -5
    pos1[2] += depth_base + depth_shift
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add cross piece one
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = 14
    h = 44
    d = depth_top
    size = [w,h,d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos)
    pos1[0] += 7.5
    pos1[1] += 0
    pos1[2] += depth_base + depth_shift
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add cross piece two
    p4 = copy.deepcopy(p3)
    w = 44
    h = 14
    d = depth_top
    size = [w,h,d]
    p4["size"] = size
    pos1 = copy.deepcopy(pos)
    pos1[0] += 0
    pos1[1] += -7.5
    pos1[2] += depth_base + depth_shift
    p4["pos"] = pos1
    #p4["m"] = "#"
    oobb_base.append_full(thing,**p4)


    #add screw_countersunk
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_screw_countersunk"
    p3["depth"] = depth_top + depth_shift + depth_base
    p3["radius_name"] = "m3"
    p3["nut"] = True
    p3["overhang"] = True
    pos1 = copy.deepcopy(pos)
    pos11 = copy.deepcopy(pos1)
    pos11[0] += -15
    pos11[1] += -7.5
    pos12 = copy.deepcopy(pos1)
    pos12[0] += 7.5
    pos12[1] += 15
    poss = []
    poss.append(pos11)
    poss.append(pos12)
    p3["pos"] = poss
    rot1 = copy.deepcopy(rot)
    rot1[1] = 180
    p3["rot"] = rot1
    p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add initial
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_text"
    p3["font"] = "Segoi UI Black:style=Bold"
    p3["text"] = extra
    p3["depth"] = 3
    s = 15
    p3["size"] = s
    pos1 = copy.deepcopy(pos)
    pos1[0] += -7.5
    pos1[1] += 22 + s/2 - 1
    pos1[2] += 0
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    
###### utilities



def make_scad_generic(part):
    
    # fetching variables
    name = part.get("name", "default")
    project_name = part.get("project_name", "default")
    
    kwargs = part.get("kwargs", {})    
    
    modes = kwargs.get("modes", ["3dpr", "laser", "true"])
    save_type = kwargs.get("save_type", "all")
    overwrite = kwargs.get("overwrite", True)

    kwargs["type"] = f"{project_name}_{name}"

    thing = oobb_base.get_default_thing(**kwargs)
    kwargs.pop("size","")

    #get the part from the function get_{name}"
    func = globals()[f"get_{name}"]    
    # test if func exists
    if callable(func):            
        func(thing, **kwargs)        
    else:            
        get_base(thing, **kwargs)   
    
    folder = f"scad_output/{thing['id']}"

    for mode in modes:
        depth = thing.get(
            "depth_mm", thing.get("thickness_mm", 3))
        height = thing.get("height_mm", 100)
        layers = depth / 3
        tilediff = height + 10
        start = 1.5
        if layers != 1:
            start = 1.5 - (layers / 2)*3
        if "bunting" in thing:
            start = 0.5
        

        opsc.opsc_make_object(f'{folder}/{mode}.scad', thing["components"], mode=mode, save_type=save_type, overwrite=overwrite, layers=layers, tilediff=tilediff, start=start)  

    yaml_file = f"{folder}/working.yaml"
    with open(yaml_file, 'w') as file:
        part_new = copy.deepcopy(part)
        kwargs_new = part_new.get("kwargs", {})
        kwargs_new.pop("save_type","")
        part_new["kwargs"] = kwargs_new
        import os
        cwd = os.getcwd()
        part_new["project_name"] = cwd
        part_new["id"] = thing["id"]
        part_new["thing"] = thing
        yaml.dump(part_new, file)

def generate_navigation(folder="scad_output", sort=["width", "height", "thickness"]):
    #crawl though all directories in scad_output and load all the working.yaml files
    parts = {}
    for root, dirs, files in os.walk(folder):
        if 'working.yaml' in files:
            yaml_file = os.path.join(root, 'working.yaml')
            #if working.yaml isn't in the root directory, then do it
            if root != folder:
                with open(yaml_file, 'r') as file:
                    part = yaml.safe_load(file)
                    # Process the loaded YAML content as needed
                    part["folder"] = root
                    part_name = root.replace(f"{folder}","")
                    
                    #remove all slashes
                    part_name = part_name.replace("/","").replace("\\","")
                    parts[part_name] = part

                    print(f"Loaded {yaml_file}: {part}")

    pass
    for part_id in parts:
        part = parts[part_id]
        kwarg_copy = copy.deepcopy(part["kwargs"])
        folder_navigation = "navigation_oobb"
        folder_source = part["folder"]
        folder_extra = ""
        for s in sort:
            if s == "name":
                ex = part.get("name", "default")
            else:
                ex = kwarg_copy.get(s, "default")
            folder_extra += f"{s}_{ex}/"

        #replace "." with d
        folder_extra = folder_extra.replace(".","d")            
        folder_destination = f"{folder_navigation}/{folder_extra}"
        if not os.path.exists(folder_destination):
            os.makedirs(folder_destination)
        if os.name == 'nt':
            #copy a full directory auto overwrite
            command = f'xcopy "{folder_source}" "{folder_destination}" /E /I /Y'
            print(command)
            os.system(command)
        else:
            os.system(f"cp {folder_source} {folder_destination}")

if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)