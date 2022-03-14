import cv2
import matplotlib.pyplot as plt
img = cv2.imread('Thanos.jpg')
plt.hist(img.ravel(),256,[0,256])
plt.savefig("new_histogram.png")
plt.show()