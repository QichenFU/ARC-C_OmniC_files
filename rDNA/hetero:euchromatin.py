#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Sep 11 21:16:57 2022

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
import pandas as pd

bins = pd.read_excel('H3K9me3.GS040.N2.merged_d_1000.xlsx')
blacklist = pd.read_excel("ce11-blacklist.xlsx")
blacklist_I = blacklist[blacklist.chrom=="I"]
blacklist_I_start = np.array(blacklist_I["start_bin"])
blacklist_I_end = np.array(blacklist_I["end_bin"])
blacklist_I_list = []
for i in range(len(blacklist_I_start)):
    for j in range(blacklist_I_start[i],blacklist_I_end[i]+1):
        blacklist_I_list.append(j)
        
blacklist_V = blacklist[blacklist.chrom=="V"]
blacklist_V_start = np.array(blacklist_V["start_bin"])
blacklist_V_end = np.array(blacklist_V["end_bin"])
blacklist_V_list = []
for i in range(len(blacklist_V_start)):
    for j in range(blacklist_V_start[i],blacklist_V_end[i]+1):
        blacklist_V_list.append(j)
        

ARCC_I_600_1000 = sparse.load_npz('I_600_1000_xor.npz') 
ARCC_I_600_1000 = ARCC_I_600_1000.toarray()

ARCC_V_600_1000 = sparse.load_npz('V_600_1000_xor.npz') 
ARCC_V_600_1000 = ARCC_V_600_1000.toarray()

bins_I = bins[bins.chrom=="I"]
start_I = np.array(bins_I["start_bin"])
end_I = np.array(bins_I["end_bin"])

bins_V = bins[bins.chrom=="V"]
start_V = np.array(bins_V["start_bin"])
end_V = np.array(bins_V["end_bin"])

start_bin = start_I[0]
end_bin = end_I[0]
repressive_I = []
active_I = []
temp_rep = 0
temp_act = 0

for i in range(len(bins_I)-1):
    for j in range(start_bin,end_bin):
        if j not in blacklist_I_list:
            temp_rep = temp_rep + sum(ARCC_I_600_1000[j:len(ARCC_I_600_1000)][:,j])
    repressive_I.append([start_bin,end_bin,temp_rep])
    temp_rep = 0
    start_bin = end_bin
    end_bin = start_I[i+1]
    for k in range(start_bin,end_bin):
        if k not in blacklist_I_list:
            temp_act = temp_act + sum(ARCC_I_600_1000[k:len(ARCC_I_600_1000)][:,k])
    active_I.append([start_bin,end_bin,temp_act])
    temp_act = 0
    start_bin = end_bin
    end_bin = end_I[i+1]


import xlwt

# active or repressive need to be changed based on the histone mark

workbook = xlwt.Workbook(encoding='utf-8')
act = workbook.add_sheet('active')

index = 0
for i in active_I:
    for x, item in enumerate(i):
        act.write(index, x, int(item))
    index += 1
        
rep = workbook.add_sheet('repressive')

index = 0
for i in repressive_I:
    for x, item in enumerate(i):
        rep.write(index, x, int(item))
    index += 1
workbook.save('H3K9me3_I_xor.xls')


start_bin = start_V[0]
end_bin = end_V[0]
repressive_V = []
active_V = []
temp_rep = 0
temp_act = 0

for i in range(len(bins_V)-1):
    for j in range(start_bin,end_bin):
        if j not in blacklist_V_list:
            temp_rep = temp_rep + sum(ARCC_V_600_1000[j:len(ARCC_V_600_1000)][:,j])
    repressive_V.append([start_bin,end_bin,temp_rep])
    temp_rep = 0
    start_bin = end_bin
    end_bin = start_V[i+1]
    for k in range(start_bin,end_bin):
        if k not in blacklist_V_list:
            temp_act = temp_act + sum(ARCC_V_600_1000[k:len(ARCC_V_600_1000)][:,k])
    active_V.append([start_bin,end_bin,temp_act])
    temp_act = 0
    start_bin = end_bin
    end_bin = end_V[i+1]


import xlwt

workbook = xlwt.Workbook(encoding='utf-8')
act = workbook.add_sheet('active')

index = 0
for i in active_V:
    for x, item in enumerate(i):
        act.write(index, x, int(item))
    index += 1
        
rep = workbook.add_sheet('repressive')

index = 0
for i in repressive_V:
    for x, item in enumerate(i):
        rep.write(index, x, int(item))
    index += 1
workbook.save('H3K9me3_V_xor.xls')



        
    

    
    


