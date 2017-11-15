library(BSgenome.Hsapiens.UCSC.hg19)
y = getSeq(Hsapiens, "chr8", 127700000, 130900000)

NGGforwardmatchfixed = matchPattern(pattern = patternNGG, subject = y, max.mismatch = 0, fixed = FALSE)

NGGstart = start(NGGforwardmatchfixed)
NGGstop = end(NGGforwardmatchfixed)

sgRNAstart = NGGstart - 18f
sgRNAstop = NGGstop - 1

newsgRNAstart = sgRNAstart[20: (length(sgRNAstart))]
newsgRNAstop = sgRNAstop[20: (length(sgRNAstop))]

sgRNAlibrarychr8 = DNAStringSet(getSeq(Hsapiens, 'chr8', newsgRNAstart, newsgRNAstop))



