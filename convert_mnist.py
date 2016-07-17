# Modified from http://pjreddie.com/projects/mnist-in-csv/
# Reads the binary format of MNIST and converts to a easily readable csv format
# Easily modifiable to save in pickle format.


import pickle
import numpy as np


def convert(imgf, labelf, outf, n):
    f = open(imgf, "rb")
    o = open(outf, "wb")
    l = open(labelf, "rb")

    f.read(16)
    l.read(8)
    images = []
    labels = []

    for i in range(n):
        labels.append(ord(l.read(1)))
        image = []
        for j in range(28*28):
            image.append(ord(f.read(1)))
        images.append(image)

    images = np.asarray(images)
    labels = np.asarray(labels)

    pickle.dump((images, labels), o)

    f.close()
    o.close()
    l.close()

convert("train-images-idx3-ubyte", "train-labels-idx1-ubyte",
        "mnist_train.p", 60000)
convert("t10k-images-idx3-ubyte", "t10k-labels-idx1-ubyte",
        "mnist_test.p", 10000)
