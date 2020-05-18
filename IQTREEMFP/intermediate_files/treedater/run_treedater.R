require(treedater)
tree <- ape::read.tree('/Users/sarahmeng/ViReport/IQTREEMFP/output_files/rooted.tre')
seqlen <- 16741
times_tab <- read.csv('/Users/sarahmeng/ViReport/IQTREEMFP/intermediate_files/treedater/times_treedater.txt', header=FALSE)
times <- setNames(times_tab[,2], times_tab[,1])
out <- dater(tree, times, seqlen, clock='uncorrelated', numStartConditions=0)
write.tree(out, '/Users/sarahmeng/ViReport/IQTREEMFP/output_files/dated.tre')
