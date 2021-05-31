import PIL
from PIL import Image
import os
import glob
files = os.listdir()
for file in files:
     if(not file.endswith('.png') or file.startswith('low_')):
        continue
     im = Image.open(file)
     im = im.convert('RGB')
     im.save(file.split('.')[0]+'.webp','webp',optimize=True,quality=1)
