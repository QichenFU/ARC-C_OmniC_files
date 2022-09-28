#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Aug 19 21:41:23 2022

@author: fuqichen
"""

import scanpy as sc
import numpy as np
import scipy.sparse as sparse
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import matplotlib as mpl
from matplotlib import colors

# distance = 600 bp

balanced_1_X_50000 = sparse.load_npz('balanced_1_X_50000.npz') 
balanced_1_X_50000=balanced_1_X_50000.toarray()

plt.imshow(balanced_1_X_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_1_X_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_1_X_50000.png",dpi=500)
plt.show()

balanced_2_X_50000 = sparse.load_npz('balanced_2_X_50000.npz') 
balanced_2_X_50000=balanced_2_X_50000.toarray()

plt.imshow(balanced_2_X_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_2_X_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_2_X_50000.png",dpi=500)
plt.show()

balanced_4_X_50000 = sparse.load_npz('balanced_4_X_50000.npz') 
balanced_4_X_50000=balanced_4_X_50000.toarray()

plt.imshow(balanced_4_X_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_4_X_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_4_X_50000.png",dpi=500)
plt.show()

balanced_5_X_50000 = sparse.load_npz('balanced_5_X_50000.npz') 
balanced_5_X_50000=balanced_5_X_50000.toarray()

plt.imshow(balanced_5_X_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_5_X_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_5_X_50000.png",dpi=500)
plt.show()

# distance = 1000 bp

balanced_1_X_1000_50000 = sparse.load_npz('balanced_1_X_1000_50000.npz') 
balanced_1_X_1000_50000=balanced_1_X_1000_50000.toarray()

plt.imshow(balanced_1_X_1000_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_1_X_1000_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_1_X_1000_50000.png",dpi=500)
plt.show()

balanced_2_X_1000_50000 = sparse.load_npz('balanced_2_X_1000_50000.npz') 
balanced_2_X_1000_50000=balanced_2_X_1000_50000.toarray()

plt.imshow(balanced_2_X_1000_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_2_X_1000_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_2_X_1000_50000.png",dpi=500)
plt.show()

balanced_4_X_1000_50000 = sparse.load_npz('balanced_4_X_1000_50000.npz') 
balanced_4_X_1000_50000=balanced_4_X_1000_50000.toarray()

plt.imshow(balanced_4_X_1000_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_4_X_1000_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_4_X_1000_50000.png",dpi=500)
plt.show()

balanced_5_X_1000_50000 = sparse.load_npz('balanced_5_X_1000_50000.npz') 
balanced_5_X_1000_50000=balanced_5_X_1000_50000.toarray()

plt.imshow(balanced_5_X_1000_50000,cmap = plt.cm.Reds,vmax=0.03,vmin=0)
plt.title("balanced_OmniC_5_X_1000_50000")
plt.colorbar(orientation="vertical")
plt.savefig("balanced_5_X_1000_50000.png",dpi=500)
plt.show()

