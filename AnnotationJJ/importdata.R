# identify the hightest expressing probes of a gene give the arraystudio data
# we need to identify a single probe set from a affymetrix experiment that can represent a gene.
# a couple of metrics that can be used"
#  1. highest expression
#  2. highest dynamic range
# this code will take in the probeset data and expression levels, and for each gene, identify a single probe by either metric

#what does the data look like?
  # each row is probeset
  # each column is expression in different samlple
    # doesnt matter what the samples is here

## for each probeset, assign it to a gene
# Array studio had a annotation file that has the gene to probe connection
setwd('/Annotation_work/')
mouse_annots = read.csv('annots_mouse_fromAS.csv')
colnames(mouse_annots)
##psuedocode
# 1. pick a entrez id, 
# 2. find all rows with that id
# 3. list all the probes for those rows
# 4. if id has be used
# 5         go to next id
# 6    else goto 2.
test.annots = read.csv('annots_smallsubset.csv')
      
colnames(test.annots)
summary(test.annots$Entrez.Gene)
##1
#test.annots$Entrez.Gene == test.annots$Entrez.Gene[2] #1
# use factors?
Unique.Entrez = factor(test.annots$Entrez.Gene)
#find rows that have a certain Entrez ID
test.annots$Entrez Unique.Entrez[1]
