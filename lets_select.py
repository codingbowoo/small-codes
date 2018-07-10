import os

_list = os.listdir("/Users/bowoojang/Desktop/photo/_group/")

for dest in os.listdir("/Users/bowoojang/Desktop/photo/select/"):
    _fname = dest[:8]+".tiff.jpg"
    if _fname in _list:
        _list.remove(_fname)
        continue
    else:
        _cmd = "rm select/"+ dest
        os.system(_cmd)
        print("[Done] " + _cmd)

