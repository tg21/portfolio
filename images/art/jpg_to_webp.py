import PIL
from PIL import Image
import os
import glob
files = os.listdir()
for file in files:
     if(not file.endswith('.webp') or file.startswith('low_')):
        continue
     im = Image.open(file)
     im = im.convert('RGB')
     im.save('low_'+file.split('.')[0]+'.webp','webp',optimize=True,quality=0.01)
