import os
from PIL import Image

def compress(dir, quality):
    for root, _, files in os.walk(dir):
        for file in files:
            if file.endswith('.jpg') or file.endswith('.jpeg') or file.endswith('.png'):
                img_path = os.path.join(root, file)
                img = Image.open(img_path)
                img.save(img_path, quality=quality)
                print(f'Finished compressing ./{img_path}')

if __name__ == '__main__':
    compress('source/gallery', 80)
