import PIL
from PIL import Image
import os
import glob
files = os.listdir()
for file in files:
     if(not file.endswith('.webp')):
        continue
     im = Image.open(file)
     im = im.convert('RGB')
     im.save('thumbs/thumb_'+file.split('.')[0]+'.webp','webp',optimize=True,quality=1)
