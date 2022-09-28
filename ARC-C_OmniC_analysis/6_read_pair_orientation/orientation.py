def iter_sam(sam_fh):
    for line in sam_fh:
        if line[0] == '@':
            continue
        rname,flag,chrom,pos,mapq,cigar,chrom2,pos2,dist,other = line.rstrip().split('\t', 9)
        if chrom2 == '=':
            chrom2 = chrom
        yield rname,flag,chrom,int(pos),chrom2,int(pos2),int(dist)

name=["Pooled.valid.FF_1","Pooled.valid.FR_1","Pooled.valid.RF_1","Pooled.valid.RR_1"] # input sam file names (without ".sam")

for i in name:
    samIn = i + ".sam"
    sam_fn = open(samIn)
    output = {}
    for rname,flag,chrom,pos,chrom2,pos2,dist in iter_sam(sam_fn):
        if dist > 0: 
            if dist not in output:
                output[dist] = 1
            else:
                output[dist] = output[dist] + 1
    for j in range(1,10001):  # if 0 read pairs in 1-10000 bp, output 0 (make it more convenient for combination)
        if j not in output:
            output[j] = 0


    with open(i+'.txt', 'w') as f:
        for key, value in output.items():
            f.write(str(key))
            f.write('\t')
            f.write(str(value))
            f.write('\n')
