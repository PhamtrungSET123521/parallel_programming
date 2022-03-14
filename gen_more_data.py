import os
import shutil

img_folder = "./origin_image"

for file in os.listdir(img_folder):
	for i in range(25):
		src_path = os.path.join(img_folder, file)
		des_path = os.path.join(img_folder, file.replace(".jpg", "{0}.jpg".format(i)))
		shutil.copyfile(src_path, des_path)
