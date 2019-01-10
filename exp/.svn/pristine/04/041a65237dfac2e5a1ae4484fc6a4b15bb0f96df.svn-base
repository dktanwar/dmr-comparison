legend_space <- -0.26
right <- 10.5
bottom <- 0
left <- 5
top <- 0
cex_main = 1
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_3412158_3412208.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.146944
xaxis[1] <- 3412158
p[1] <- 0.146944
percent[1] <- -16
sum_percent[1] <- -16
g1[1] <- list(c(16.666667,0.000000,27.272727))
g1_means[1] <- 16.000000
g2[1] <- list(c(0.000000,0.000000,0.000000))
g2_means[1] <- 0.000000
sum_p[2] <- 0.132803
xaxis[2] <- 3412164
p[2] <- 0.14343
percent[2] <- -14.9038
sum_percent[2] <- -15.5439
g1[2] <- list(c(11.111111,9.090909,33.333333))
g1_means[2] <- 18.750000
g2[2] <- list(c(0.000000,7.692308,0.000000))
g2_means[2] <- 3.846154
sum_p[3] <- 0.157438
xaxis[3] <- 3412170
p[3] <- 0.367267
percent[3] <- -7.97721
sum_percent[3] <- -12.9714
g1[3] <- list(c(0.000000,12.500000,27.272727))
g1_means[3] <- 15.384615
g2[3] <- list(c(16.666667,9.090909,0.000000))
g2_means[3] <- 7.407407
sum_p[4] <- 0.180401
xaxis[4] <- 3412173
p[4] <- 0.353562
percent[4] <- -8.30769
sum_percent[4] <- -11.8123
g1[4] <- list(c(0.000000,14.285714,27.272727))
g1_means[4] <- 16.000000
g2[4] <- list(c(16.666667,0.000000,9.090909))
g2_means[4] <- 7.692308
sum_p[5] <- 0.166176
xaxis[5] <- 3412175
p[5] <- 0.144582
percent[5] <- -10.5185
sum_percent[5] <- -11.5683
g1[5] <- list(c(11.111111,14.285714,27.272727))
g1_means[5] <- 18.518519
g2[5] <- list(c(16.666667,10.000000,0.000000))
g2_means[5] <- 8.000000
sum_p[6] <- 0.132728
xaxis[6] <- 3412181
p[6] <- 0.103484
percent[6] <- -19.2473
sum_percent[6] <- -13.009
g1[6] <- list(c(0.000000,27.272727,30.769231))
g1_means[6] <- 22.580645
g2[6] <- list(c(0.000000,9.090909,0.000000))
g2_means[6] <- 3.333333
sum_p[7] <- 0.0996674
xaxis[7] <- 3412190
p[7] <- 0.03065
percent[7] <- -18.0556
sum_percent[7] <- -13.9812
g1[7] <- list(c(30.000000,20.000000,37.500000))
g1_means[7] <- 30.555556
g2[7] <- list(c(12.500000,20.000000,7.142857))
g2_means[7] <- 12.500000
sum_p[8] <- 0.0701808
xaxis[8] <- 3412198
p[8] <- 0.0849411
percent[8] <- -13.1381
sum_percent[8] <- -13.8168
g1[8] <- list(c(27.272727,25.000000,28.571429))
g1_means[8] <- 27.027027
g2[8] <- list(c(12.500000,23.076923,6.666667))
g2_means[8] <- 13.888889
sum_p[9] <- 0.0498898
xaxis[9] <- 3412206
p[9] <- 0.0349629
percent[9] <- -18.4476
sum_percent[9] <- -14.3581
g1[9] <- list(c(20.000000,33.333333,30.000000))
g1_means[9] <- 28.125000
g2[9] <- list(c(0.000000,20.000000,7.692308))
g2_means[9] <- 9.677419
sum_p[10] <- 0.0278454
xaxis[10] <- 3412208
p[10] <- 0.0421186
percent[10] <- -19.7343
sum_percent[10] <- -14.9647
g1[10] <- list(c(33.333333,25.000000,30.000000))
g1_means[10] <- 29.411765
g2[10] <- list(c(11.111111,20.000000,0.000000))
g2_means[10] <- 9.677419
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_12076399_12076900.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.0819883
xaxis[1] <- 12076399
p[1] <- 0.0819883
percent[1] <- 13.8352
sum_percent[1] <- 13.8352
g1[1] <- list(c(36.363636,14.285714,28.571429))
g1_means[1] <- 30.232558
g2[1] <- list(c(46.666667,41.666667,41.176471))
g2_means[1] <- 44.067797
sum_p[2] <- 0.0497826
xaxis[2] <- 12076403
p[2] <- 0.0282589
percent[2] <- 18.6842
sum_percent[2] <- 16.1428
g1[2] <- list(c(31.578947,14.285714,25.000000))
g1_means[2] <- 26.315789
g2[2] <- list(c(46.875000,41.666667,43.750000))
g2_means[2] <- 45.000000
sum_p[3] <- 0.0349064
xaxis[3] <- 12076435
p[3] <- 0.0240434
percent[3] <- 21.3043
sum_percent[3] <- 16.9037
g1[3] <- list(c(25.000000,14.285714,20.000000))
g1_means[3] <- 20.000000
g2[3] <- list(c(47.368421,25.000000,42.105263))
g2_means[3] <- 41.304348
sum_p[4] <- 0.0328699
xaxis[4] <- 12076437
p[4] <- 0.0966151
percent[4] <- 9.4697
sum_percent[4] <- 15.3837
g1[4] <- list(c(37.500000,25.000000,25.000000))
g1_means[4] <- 29.166667
g2[4] <- list(c(43.750000,33.333333,36.842105))
g2_means[4] <- 38.636364
sum_p[5] <- 0.0249333
xaxis[5] <- 12076663
p[5] <- 0.162991
percent[5] <- 11.2319
sum_percent[5] <- 14.7866
g1[5] <- list(c(37.500000,40.000000,20.000000))
g1_means[5] <- 30.434783
g2[5] <- list(c(50.000000,37.500000,41.666667))
g2_means[5] <- 41.666667
sum_p[6] <- 0.0191803
xaxis[6] <- 12076717
p[6] <- 0.403382
percent[6] <- 8.76437
sum_percent[6] <- 14.0778
g1[6] <- list(c(0.000000,37.500000,14.285714))
g1_means[6] <- 29.166667
g2[6] <- list(c(50.000000,30.769231,25.000000))
g2_means[6] <- 37.931034
sum_p[7] <- 0.0221023
xaxis[7] <- 12076721
p[7] <- 0.19416
percent[7] <- 13.8182
sum_percent[7] <- 14.3109
g1[7] <- list(c(0.000000,26.666667,0.000000))
g1_means[7] <- 18.181818
g2[7] <- list(c(37.500000,25.000000,40.000000))
g2_means[7] <- 32.000000
sum_p[8] <- 0.0293633
xaxis[8] <- 12076731
p[8] <- 0.381872
percent[8] <- 10.7097
sum_percent[8] <- 13.9399
g1[8] <- list(c(0.000000,40.000000,14.285714))
g1_means[8] <- 28.000000
g2[8] <- list(c(50.000000,27.272727,37.500000))
g2_means[8] <- 38.709677
sum_p[9] <- 0.0309252
xaxis[9] <- 12076733
p[9] <- 0.172891
percent[9] <- 12.605
sum_percent[9] <- 13.7836
g1[9] <- list(c(20.000000,37.500000,14.285714))
g1_means[9] <- 28.571429
g2[9] <- list(c(50.000000,38.461538,33.333333))
g2_means[9] <- 41.176471
sum_p[10] <- 0.0408754
xaxis[10] <- 12076738
p[10] <- 0.339752
percent[10] <- 10.0358
sum_percent[10] <- 13.5665
g1[10] <- list(c(20.000000,31.250000,0.000000))
g1_means[10] <- 22.222222
g2[10] <- list(c(41.666667,20.000000,33.333333))
g2_means[10] <- 32.258065
sum_p[11] <- 0.0364193
xaxis[11] <- 12076750
p[11] <- 0.0459193
percent[11] <- 15.942
sum_percent[11] <- 13.8775
g1[11] <- list(c(16.666667,20.000000,14.285714))
g1_means[11] <- 17.391304
g2[11] <- list(c(37.500000,20.000000,36.363636))
g2_means[11] <- 33.333333
sum_p[12] <- 0.038389
xaxis[12] <- 12076767
p[12] <- 0.864325
percent[12] <- 1.05263
sum_percent[12] <- 13.4151
g1[12] <- list(c(11.111111,28.571429,25.000000))
g1_means[12] <- 20.000000
g2[12] <- list(c(25.000000,25.000000,14.285714))
g2_means[12] <- 21.052632
sum_p[13] <- 0.0395044
xaxis[13] <- 12076771
p[13] <- 0.169797
percent[13] <- 7.24638
sum_percent[13] <- 13.0083
g1[13] <- list(c(20.000000,33.333333,25.000000))
g1_means[13] <- 26.086957
g2[13] <- list(c(37.500000,30.000000,33.333333))
g2_means[13] <- 33.333333
sum_p[14] <- 0.048034
xaxis[14] <- 12076779
p[14] <- 0.611757
percent[14] <- 2.72727
sum_percent[14] <- 12.3752
g1[14] <- list(c(27.272727,25.000000,33.333333))
g1_means[14] <- 27.272727
g2[14] <- list(c(42.857143,22.222222,28.571429))
g2_means[14] <- 30.000000
sum_p[15] <- 0.0465172
xaxis[15] <- 12076789
p[15] <- 0.0672675
percent[15] <- 17.1429
sum_percent[15] <- 12.6808
g1[15] <- list(c(23.076923,16.666667,16.666667))
g1_means[15] <- 20.000000
g2[15] <- list(c(44.444444,22.222222,41.176471))
g2_means[15] <- 37.142857
sum_p[16] <- 0.0443191
xaxis[16] <- 12076792
p[16] <- 0.0158572
percent[16] <- 11.7778
sum_percent[16] <- 12.5856
g1[16] <- list(c(16.666667,20.000000,12.500000))
g1_means[16] <- 16.000000
g2[16] <- list(c(28.571429,27.272727,27.777778))
g2_means[16] <- 27.777778
sum_p[17] <- 0.0416304
xaxis[17] <- 12076795
p[17] <- 0.0266446
percent[17] <- 14.093
sum_percent[17] <- 12.6578
g1[17] <- list(c(15.384615,28.571429,22.222222))
g1_means[17] <- 20.689655
g2[17] <- list(c(40.000000,28.571429,36.363636))
g2_means[17] <- 34.782609
sum_p[18] <- 0.0373479
xaxis[18] <- 12076798
p[18] <- 0.0610862
percent[18] <- 12.7206
sum_percent[18] <- 12.5853
g1[18] <- list(c(13.333333,28.571429,22.222222))
g1_means[18] <- 19.354839
g2[18] <- list(c(35.714286,31.250000,30.434783))
g2_means[18] <- 32.075472
sum_p[19] <- 0.0435484
xaxis[19] <- 12076817
p[19] <- 0.187641
percent[19] <- 10.0733
sum_percent[19] <- 12.3912
g1[19] <- list(c(25.000000,27.272727,25.000000))
g1_means[19] <- 25.641026
g2[19] <- list(c(45.833333,26.666667,29.411765))
g2_means[19] <- 35.714286
sum_p[20] <- 0.0429356
xaxis[20] <- 12076900
p[20] <- 0.042944
percent[20] <- 12.8421
sum_percent[20] <- 12.4129
g1[20] <- list(c(23.076923,28.571429,20.000000))
g1_means[20] <- 24.000000
g2[20] <- list(c(42.105263,25.000000,33.333333))
g2_means[20] <- 36.842105
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_18820740_18821150.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.0899367
xaxis[1] <- 18820740
p[1] <- 0.0899367
percent[1] <- 14.5503
sum_percent[1] <- 14.5503
g1[1] <- list(c(27.272727,28.571429,23.529412))
g1_means[1] <- 26.190476
g2[1] <- list(c(46.153846,22.222222,42.105263))
g2_means[1] <- 40.740741
sum_p[2] <- 0.044436
xaxis[2] <- 18820815
p[2] <- 0.0929295
percent[2] <- 16.6667
sum_percent[2] <- 15.6218
g1[2] <- list(c(6.666667,31.578947,25.000000))
g1_means[2] <- 22.000000
g2[2] <- list(c(44.736842,28.571429,34.782609))
g2_means[2] <- 38.666667
sum_p[3] <- 0.0490648
xaxis[3] <- 18820855
p[3] <- 0.108088
percent[3] <- 10.4762
sum_percent[3] <- 14.0124
g1[3] <- list(c(25.000000,21.428571,23.076923))
g1_means[3] <- 22.857143
g2[3] <- list(c(43.750000,31.250000,28.000000))
g2_means[3] <- 33.333333
sum_p[4] <- 0.0611285
xaxis[4] <- 18820886
p[4] <- 0.167782
percent[4] <- 14.9245
sum_percent[4] <- 14.9728
g1[4] <- list(c(0.000000,23.529412,5.882353))
g1_means[4] <- 11.904762
g2[4] <- list(c(40.000000,9.090909,30.000000))
g2_means[4] <- 26.829268
sum_p[5] <- 0.0919233
xaxis[5] <- 18820895
p[5] <- 0.333264
percent[5] <- 9.6723
sum_percent[5] <- 14.3558
g1[5] <- list(c(16.666667,14.285714,16.666667))
g1_means[5] <- 15.909091
g2[5] <- list(c(42.857143,9.090909,22.222222))
g2_means[5] <- 25.581395
sum_p[6] <- 0.163026
xaxis[6] <- 18820939
p[6] <- 0.99404
percent[6] <- 0.0681508
sum_percent[6] <- 10.7967
g1[6] <- list(c(28.000000,42.857143,27.777778))
g1_means[6] <- 33.802817
g2[6] <- list(c(48.000000,30.000000,17.647059))
g2_means[6] <- 33.870968
sum_p[7] <- 0.175839
xaxis[7] <- 18821010
p[7] <- 0.299415
percent[7] <- 10.0155
sum_percent[7] <- 10.6873
g1[7] <- list(c(29.166667,20.000000,16.666667))
g1_means[7] <- 23.913043
g2[7] <- list(c(43.333333,10.000000,31.250000))
g2_means[7] <- 33.928571
sum_p[8] <- 0.181364
xaxis[8] <- 18821064
p[8] <- 0.515164
percent[8] <- 5.82878
sum_percent[8] <- 10.5438
g1[8] <- list(c(28.571429,13.333333,8.000000))
g1_means[8] <- 16.393443
g2[8] <- list(c(33.333333,9.090909,15.384615))
g2_means[8] <- 22.222222
sum_p[9] <- 0.177375
xaxis[9] <- 18821135
p[9] <- 0.40065
percent[9] <- 4.74138
sum_percent[9] <- 10.3052
g1[9] <- list(c(14.285714,14.285714,9.090909))
g1_means[9] <- 12.500000
g2[9] <- list(c(22.222222,25.000000,8.333333))
g2_means[9] <- 17.241379
sum_p[10] <- 0.178957
xaxis[10] <- 18821145
p[10] <- 0.280779
percent[10] <- 13.4073
sum_percent[10] <- 10.5441
g1[10] <- list(c(14.285714,16.666667,16.666667))
g1_means[10] <- 15.625000
g2[10] <- list(c(46.153846,25.000000,10.000000))
g2_means[10] <- 29.032258
sum_p[11] <- 0.199446
xaxis[11] <- 18821148
p[11] <- 0.642187
percent[11] <- 6.2069
sum_percent[11] <- 10.314
g1[11] <- list(c(20.000000,16.666667,0.000000))
g1_means[11] <- 13.793103
g2[11] <- list(c(41.666667,14.285714,0.000000))
g2_means[11] <- 20.000000
sum_p[12] <- 0.186243
xaxis[12] <- 18821150
p[12] <- 0.0676203
percent[12] <- 22.4706
sum_percent[12] <- 10.8574
g1[12] <- list(c(7.692308,0.000000,0.000000))
g1_means[12] <- 4.000000
g2[12] <- list(c(41.666667,22.222222,15.384615))
g2_means[12] <- 26.470588
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_59221929_59222008.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.220462
xaxis[1] <- 59221929
p[1] <- 0.220462
percent[1] <- -12.89
sum_percent[1] <- -12.89
g1[1] <- list(c(35.000000,37.500000,50.000000))
g1_means[1] <- 40.476190
g2[1] <- list(c(33.333333,0.000000,33.333333))
g2_means[1] <- 27.586207
sum_p[2] <- 0.16301
xaxis[2] <- 59221947
p[2] <- 0.148028
percent[2] <- -13.6842
sum_percent[2] <- -13.3782
g1[2] <- list(c(27.272727,43.750000,46.153846))
g1_means[2] <- 40.000000
g2[2] <- list(c(36.363636,10.000000,29.411765))
g2_means[2] <- 26.315789
sum_p[3] <- 0.130243
xaxis[3] <- 59221949
p[3] <- 0.234664
percent[3] <- -13.5084
sum_percent[3] <- -13.5527
g1[3] <- list(c(11.111111,40.000000,47.058824))
g1_means[3] <- 36.585366
g2[3] <- list(c(33.333333,16.666667,20.000000))
g2_means[3] <- 23.076923
sum_p[4] <- 0.137303
xaxis[4] <- 59221951
p[4] <- 0.180781
percent[4] <- -16.4141
sum_percent[4] <- -14.2743
g1[4] <- list(c(27.272727,40.000000,44.444444))
g1_means[4] <- 38.636364
g2[4] <- list(c(36.363636,0.000000,26.666667))
g2_means[4] <- 22.222222
sum_p[5] <- 0.112886
xaxis[5] <- 59221965
p[5] <- 0.134034
percent[5] <- -12.5541
sum_percent[5] <- -13.9321
g1[5] <- list(c(20.000000,36.363636,43.478261))
g1_means[5] <- 36.363636
g2[5] <- list(c(25.000000,18.750000,28.571429))
g2_means[5] <- 23.809524
sum_p[6] <- 0.0866487
xaxis[6] <- 59221972
p[6] <- 0.10358
percent[6] <- -12.8191
sum_percent[6] <- -13.7445
g1[6] <- list(c(27.272727,33.333333,45.000000))
g1_means[6] <- 37.209302
g2[6] <- list(c(12.500000,23.809524,33.333333))
g2_means[6] <- 24.390244
sum_p[7] <- 0.0778508
xaxis[7] <- 59221974
p[7] <- 0.2215
percent[7] <- -12.2629
sum_percent[7] <- -13.5333
g1[7] <- list(c(27.272727,20.000000,40.000000))
g1_means[7] <- 31.707317
g2[7] <- list(c(0.000000,16.666667,33.333333))
g2_means[7] <- 19.444444
sum_p[8] <- 0.0767255
xaxis[8] <- 59221983
p[8] <- 0.107588
percent[8] <- -11.4341
sum_percent[8] <- -13.2298
g1[8] <- list(c(30.000000,42.857143,45.833333))
g1_means[8] <- 41.666667
g2[8] <- list(c(25.000000,25.000000,40.000000))
g2_means[8] <- 30.232558
sum_p[9] <- 0.0723606
xaxis[9] <- 59221985
p[9] <- 0.0604885
percent[9] <- -15.723
sum_percent[9] <- -13.5195
g1[9] <- list(c(25.000000,42.857143,45.833333))
g1_means[9] <- 41.304348
g2[9] <- list(c(20.000000,21.052632,35.714286))
g2_means[9] <- 25.581395
sum_p[10] <- 0.0740403
xaxis[10] <- 59222008
p[10] <- 0.168008
percent[10] <- -12.5079
sum_percent[10] <- -13.4259
g1[10] <- list(c(28.571429,30.769231,47.826087))
g1_means[10] <- 39.534884
g2[10] <- list(c(14.285714,23.529412,38.461538))
g2_means[10] <- 27.027027
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_72916650_72916719.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.0485623
xaxis[1] <- 72916650
p[1] <- 0.0485623
percent[1] <- -16.476
sum_percent[1] <- -16.476
g1[1] <- list(c(18.181818,20.000000,28.571429))
g1_means[1] <- 21.739130
g2[1] <- list(c(0.000000,0.000000,16.666667))
g2_means[1] <- 5.263158
sum_p[2] <- 0.00488488
xaxis[2] <- 72916658
p[2] <- 0.0519694
percent[2] <- -21.7391
sum_percent[2] <- -19.175
g1[2] <- list(c(27.272727,0.000000,22.222222))
g1_means[2] <- 21.739130
g2[2] <- list(c(0.000000,0.000000,0.000000))
g2_means[2] <- 0.000000
sum_p[3] <- 0.102185
xaxis[3] <- 72916661
p[3] <- 0.650404
percent[3] <- -5.18395
sum_percent[3] <- -13.9337
g1[3] <- list(c(33.333333,0.000000,27.272727))
g1_means[3] <- 26.923077
g2[3] <- list(c(12.500000,0.000000,36.363636))
g2_means[3] <- 21.739130
sum_p[4] <- 0.059109
xaxis[4] <- 72916664
p[4] <- 0.0536796
percent[4] <- -9.52381
sum_percent[4] <- -13.2012
g1[4] <- list(c(11.111111,0.000000,11.111111))
g1_means[4] <- 9.523810
g2[4] <- list(c(0.000000,0.000000,0.000000))
g2_means[4] <- 0.000000
sum_p[5] <- 0.0678984
xaxis[5] <- 72916666
p[5] <- 0.257213
percent[5] <- -4.97835
sum_percent[5] <- -11.7544
g1[5] <- list(c(11.111111,0.000000,11.111111))
g1_means[5] <- 9.523810
g2[5] <- list(c(0.000000,0.000000,10.000000))
g2_means[5] <- 4.545455
sum_p[6] <- 0.0831703
xaxis[6] <- 72916693
p[6] <- 0.187652
percent[6] <- -14.0212
sum_percent[6] <- -12.1959
g1[6] <- list(c(31.250000,0.000000,14.285714))
g1_means[6] <- 21.428571
g2[6] <- list(c(0.000000,0.000000,15.384615))
g2_means[6] <- 7.407407
sum_p[7] <- 0.118438
xaxis[7] <- 72916697
p[7] <- 0.314103
percent[7] <- -11.7949
sum_percent[7] <- -12.1725
g1[7] <- list(c(33.333333,0.000000,14.285714))
g1_means[7] <- 23.333333
g2[7] <- list(c(0.000000,0.000000,23.076923))
g2_means[7] <- 11.538462
sum_p[8] <- 0.148586
xaxis[8] <- 72916705
p[8] <- 0.491624
percent[8] <- -8.18966
sum_percent[8] <- -11.6587
g1[8] <- list(c(33.333333,0.000000,0.000000))
g1_means[8] <- 20.689655
g2[8] <- list(c(0.000000,12.500000,18.181818))
g2_means[8] <- 12.500000
sum_p[9] <- 0.168237
xaxis[9] <- 72916714
p[9] <- 0.564851
percent[9] <- -3.2381
sum_percent[9] <- -10.7023
g1[9] <- list(c(14.285714,0.000000,0.000000))
g1_means[9] <- 8.000000
g2[9] <- list(c(0.000000,0.000000,10.000000))
g2_means[9] <- 4.761905
sum_p[10] <- 0.157115
xaxis[10] <- 72916719
p[10] <- 0.164731
percent[10] <- -15.3846
sum_percent[10] <- -11.0468
g1[10] <- list(c(25.000000,0.000000,0.000000))
g1_means[10] <- 15.384615
g2[10] <- list(c(0.000000,0.000000,0.000000))
g2_means[10] <- 0.000000
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_74230884_74231398.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.197619
xaxis[1] <- 74230884
p[1] <- 0.197619
percent[1] <- -14.0741
sum_percent[1] <- -14.0741
g1[1] <- list(c(29.411765,0.000000,32.000000))
g1_means[1] <- 24.074074
g2[1] <- list(c(0.000000,18.181818,12.500000))
g2_means[1] <- 10.000000
sum_p[2] <- 0.285181
xaxis[2] <- 74230949
p[2] <- 0.54478
percent[2] <- -4.6595
sum_percent[2] <- -10.4382
g1[2] <- list(c(18.181818,0.000000,18.181818))
g1_means[2] <- 11.111111
g2[2] <- list(c(0.000000,16.666667,0.000000))
g2_means[2] <- 6.451613
sum_p[3] <- 0.144742
xaxis[3] <- 74230991
p[3] <- 0.015329
percent[3] <- -17.0732
sum_percent[3] <- -12.0706
g1[3] <- list(c(20.000000,12.500000,20.000000))
g1_means[3] <- 17.073171
g2[3] <- list(c(0.000000,0.000000,0.000000))
g2_means[3] <- 0.000000
sum_p[4] <- 0.096761
xaxis[4] <- 74231028
p[4] <- 0.0467521
percent[4] <- -19.4444
sum_percent[4] <- -14.0511
g1[4] <- list(c(37.500000,15.384615,21.052632))
g1_means[4] <- 25.000000
g2[4] <- list(c(13.333333,0.000000,0.000000))
g2_means[4] <- 5.555556
sum_p[5] <- 0.127369
xaxis[5] <- 74231068
p[5] <- 0.247203
percent[5] <- -14.1168
sum_percent[5] <- -13.9394
g1[5] <- list(c(41.176471,0.000000,31.250000))
g1_means[5] <- 29.268293
g2[5] <- list(c(15.384615,20.000000,0.000000))
g2_means[5] <- 15.151515
sum_p[6] <- 0.130368
xaxis[6] <- 74231175
p[6] <- 0.569312
percent[6] <- -2.95455
sum_percent[6] <- -11.8348
g1[6] <- list(c(15.384615,16.666667,30.769231))
g1_means[6] <- 20.454545
g2[6] <- list(c(21.052632,18.181818,10.000000))
g2_means[6] <- 17.500000
sum_p[7] <- 0.131771
xaxis[7] <- 74231226
p[7] <- 0.245493
percent[7] <- -16.2963
sum_percent[7] <- -12.4016
g1[7] <- list(c(14.285714,0.000000,40.000000))
g1_means[7] <- 20.000000
g2[7] <- list(c(11.111111,0.000000,0.000000))
g2_means[7] <- 3.703704
sum_p[8] <- 0.0904122
xaxis[8] <- 74231257
p[8] <- 0.0109279
percent[8] <- -35.1351
sum_percent[8] <- -15.0516
g1[8] <- list(c(41.176471,25.000000,33.333333))
g1_means[8] <- 35.135135
g2[8] <- list(c(0.000000,0.000000,0.000000))
g2_means[8] <- 0.000000
sum_p[9] <- 0.0963405
xaxis[9] <- 74231284
p[9] <- 0.218109
percent[9] <- -12.2549
sum_percent[9] <- -14.7778
g1[9] <- list(c(25.000000,0.000000,28.571429))
g1_means[9] <- 20.588235
g2[9] <- list(c(0.000000,20.000000,7.692308))
g2_means[9] <- 8.333333
sum_p[10] <- 0.103608
xaxis[10] <- 74231298
p[10] <- 0.152372
percent[10] <- -20.9121
sum_percent[10] <- -15.3263
g1[10] <- list(c(33.333333,0.000000,36.363636))
g1_means[10] <- 24.137931
g2[10] <- list(c(0.000000,0.000000,9.090909))
g2_means[10] <- 3.225806
sum_p[11] <- 0.0993474
xaxis[11] <- 74231325
p[11] <- 0.165104
percent[11] <- -8.54701
sum_percent[11] <- -14.9389
g1[11] <- list(c(33.333333,23.076923,36.363636))
g1_means[11] <- 30.769231
g2[11] <- list(c(12.500000,28.571429,25.000000))
g2_means[11] <- 22.222222
sum_p[12] <- 0.0769735
xaxis[12] <- 74231365
p[12] <- 0.00104953
percent[12] <- -27.1429
sum_percent[12] <- -16.1253
g1[12] <- list(c(28.571429,25.000000,35.294118))
g1_means[12] <- 30.000000
g2[12] <- list(c(0.000000,0.000000,6.666667))
g2_means[12] <- 2.857143
sum_p[13] <- 0.0586951
xaxis[13] <- 74231373
p[13] <- 0.00312302
percent[13] <- -27.013
sum_percent[13] <- -17.1968
g1[13] <- list(c(27.777778,28.571429,39.130435))
g1_means[13] <- 32.727273
g2[13] <- list(c(7.142857,11.111111,0.000000))
g2_means[13] <- 5.714286
sum_p[14] <- 0.0508394
xaxis[14] <- 74231398
p[14] <- 0.0173737
percent[14] <- -26.4773
sum_percent[14] <- -18.1793
g1[14] <- list(c(39.130435,23.076923,43.478261))
g1_means[14] <- 37.288136
g2[14] <- list(c(0.000000,20.000000,10.000000))
g2_means[14] <- 10.810811
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_74700275_74700441.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.211673
xaxis[1] <- 74700275
p[1] <- 0.211673
percent[1] <- -15.7558
sum_percent[1] <- -15.7558
g1[1] <- list(c(34.615385,16.666667,0.000000))
g1_means[1] <- 23.255814
g2[1] <- list(c(9.090909,6.250000,7.692308))
g2_means[1] <- 7.500000
sum_p[2] <- 0.112306
xaxis[2] <- 74700303
p[2] <- 0.0422554
percent[2] <- -14.7549
sum_percent[2] <- -15.2455
g1[2] <- list(c(25.925926,12.500000,16.666667))
g1_means[2] <- 21.276596
g2[2] <- list(c(6.666667,5.555556,7.692308))
g2_means[2] <- 6.521739
sum_p[3] <- 0.131251
xaxis[3] <- 74700308
p[3] <- 0.183363
percent[3] <- -10.6293
sum_percent[3] <- -13.591
g1[3] <- list(c(28.571429,11.111111,9.090909))
g1_means[3] <- 20.833333
g2[3] <- list(c(11.764706,10.000000,8.333333))
g2_means[3] <- 10.204082
sum_p[4] <- 0.159541
xaxis[4] <- 74700335
p[4] <- 0.616582
percent[4] <- 2.01863
sum_percent[4] <- -11.2868
g1[4] <- list(c(11.111111,0.000000,12.500000))
g1_means[4] <- 8.695652
g2[4] <- list(c(7.692308,11.111111,16.666667))
g2_means[4] <- 10.714286
sum_p[5] <- 0.0776669
xaxis[5] <- 74700367
p[5] <- 0.0646989
percent[5] <- -20.2724
sum_percent[5] <- -13.2564
g1[5] <- list(c(38.461538,38.888889,25.000000))
g1_means[5] <- 35.897436
g2[5] <- list(c(0.000000,25.000000,20.000000))
g2_means[5] <- 15.625000
sum_p[6] <- 0.0835425
xaxis[6] <- 74700393
p[6] <- 0.404592
percent[6] <- -6.95652
sum_percent[6] <- -12.4183
g1[6] <- list(c(38.888889,40.909091,16.666667))
g1_means[6] <- 36.956522
g2[6] <- list(c(25.000000,41.176471,18.181818))
g2_means[6] <- 30.000000
sum_p[7] <- 0.0851066
xaxis[7] <- 74700413
p[7] <- 0.556384
percent[7] <- -4.42396
sum_percent[7] <- -11.1499
g1[7] <- list(c(36.363636,42.857143,33.333333))
g1_means[7] <- 38.709677
g2[7] <- list(c(22.222222,44.444444,25.000000))
g2_means[7] <- 34.285714
sum_p[8] <- 0.0501571
xaxis[8] <- 74700426
p[8] <- 0.0569805
percent[8] <- -15.6486
sum_percent[8] <- -12.3539
g1[8] <- list(c(45.454545,43.750000,44.444444))
g1_means[8] <- 44.680851
g2[8] <- list(c(20.000000,36.363636,30.000000))
g2_means[8] <- 29.032258
sum_p[9] <- 0.028503
xaxis[9] <- 74700437
p[9] <- 0.0242364
percent[9] <- -32.398
sum_percent[9] <- -14.7123
g1[9] <- list(c(50.000000,38.461538,40.000000))
g1_means[9] <- 44.897959
g2[9] <- list(c(0.000000,28.571429,11.111111))
g2_means[9] <- 12.500000
sum_p[10] <- 0.0176637
xaxis[10] <- 74700441
p[10] <- 0.0103836
percent[10] <- -26.0943
sum_percent[10] <- -15.8525
g1[10] <- list(c(41.666667,40.000000,40.000000))
g1_means[10] <- 40.909091
g2[10] <- list(c(9.090909,16.666667,20.000000))
g2_means[10] <- 14.814815
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
setEPS()
postscript('DMR_figures/set1_set2_c1_CpN10_d1_p0_90_P10_S0_chr18_77348915_77349018.eps')
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
sum_p[1] <- 0.00906088
xaxis[1] <- 77348915
p[1] <- 0.00906088
percent[1] <- 16.9231
sum_percent[1] <- 16.9231
g1[1] <- list(c(20.833333,25.000000,15.789474))
g1_means[1] <- 20.000000
g2[1] <- list(c(37.500000,29.411765,40.625000))
g2_means[1] <- 36.923077
sum_p[2] <- 0.00746804
xaxis[2] <- 77348939
p[2] <- 0.0450153
percent[2] <- 22.043
sum_percent[2] <- 19.114
g1[2] <- list(c(22.222222,18.181818,0.000000))
g1_means[2] <- 16.666667
g2[2] <- list(c(39.130435,40.000000,37.931034))
g2_means[2] <- 38.709677
sum_p[3] <- 0.0195837
xaxis[3] <- 77348961
p[3] <- 0.11218
percent[3] <- 22.4615
sum_percent[3] <- 19.8484
g1[3] <- list(c(28.571429,0.000000,0.000000))
g1_means[3] <- 16.000000
g2[3] <- list(c(37.500000,42.857143,37.500000))
g2_means[3] <- 38.461538
sum_p[4] <- 0.0256062
xaxis[4] <- 77348977
p[4] <- 0.136156
percent[4] <- 12.5668
sum_percent[4] <- 18.6594
g1[4] <- list(c(25.000000,27.272727,0.000000))
g1_means[4] <- 22.727273
g2[4] <- list(c(38.461538,33.333333,33.333333))
g2_means[4] <- 35.294118
sum_p[5] <- 0.0366868
xaxis[5] <- 77348979
p[5] <- 0.195229
percent[5] <- 12.2967
sum_percent[5] <- 17.8039
g1[5] <- list(c(33.333333,33.333333,0.000000))
g1_means[5] <- 29.166667
g2[5] <- list(c(43.750000,37.500000,41.176471))
g2_means[5] <- 41.463415
sum_p[6] <- 0.0407507
xaxis[6] <- 77348992
p[6] <- 0.893959
percent[6] <- 0.854701
sum_percent[6] <- 16.1486
g1[6] <- list(c(22.222222,28.571429,0.000000))
g1_means[6] <- 22.222222
g2[6] <- list(c(28.571429,14.285714,25.000000))
g2_means[6] <- 23.076923
sum_p[7] <- 0.0520914
xaxis[7] <- 77349001
p[7] <- 0.646132
percent[7] <- 3.39394
sum_percent[7] <- 14.561
g1[7] <- list(c(33.333333,45.454545,20.000000))
g1_means[7] <- 36.000000
g2[7] <- list(c(44.444444,30.000000,42.857143))
g2_means[7] <- 39.393939
sum_p[8] <- 0.0425227
xaxis[8] <- 77349005
p[8] <- 0.145493
percent[8] <- 7.19697
sum_percent[8] <- 13.7928
g1[8] <- list(c(25.000000,33.333333,28.571429))
g1_means[8] <- 29.166667
g2[8] <- list(c(44.444444,36.363636,30.769231))
g2_means[8] <- 36.363636
sum_p[9] <- 0.0432442
xaxis[9] <- 77349014
p[9] <- 0.820662
percent[9] <- 0.892857
sum_percent[9] <- 11.7767
g1[9] <- list(c(37.500000,50.000000,38.461538))
g1_means[9] <- 42.857143
g2[9] <- list(c(42.857143,45.454545,42.857143))
g2_means[9] <- 43.750000
sum_p[10] <- 0.0701657
xaxis[10] <- 77349018
p[10] <- 0.22515
percent[10] <- 14.1705
sum_percent[10] <- 11.7273
g1[10] <- list(c(36.363636,45.454545,11.111111))
g1_means[10] <- 32.258065
g2[10] <- list(c(44.444444,50.000000,44.444444))
g2_means[10] <- 46.428571
layout(matrix(c(1,1,2,2,3,3,4,4), nrow = 4, byrow = TRUE), heights = c(1,1,1,1.46))
par(mar = c(bottom, left, top, right), las=2)
boxplot(g1, xaxt = 'n', range = 0, ylab = 'Methylation %', ylim = c(0,100), col = 'white', cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g1)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g1_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0), c('set1', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
boxplot(g2, xaxt = 'n', range = 0, main = NULL, ylim = c(0,100), ylab = 'Methylation %', col = 'gray',  cex.lab=1.5, cex.axis=cex_main, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(g2)+0.5), yaxt = 'n')
axis(2,cex.axis=0.75)
lines(g2_means, col='dark green', lwd = 3)
par(xpd=TRUE, las=2)
legend('topright',inset = c(legend_space,0),c('set2', 'Weighted Mean'), col = c('black','dark green'), lwd = c(1,3))
par(mar = c(bottom, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(p, xaxt='n', ylab = 'P', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, , log = 'y', xlim = c(0.5,length(p)+0.5), ylim = c(min(p,sum_p), max(p, sum_p)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_p, xaxt='n', ylab = 'P', type = 'l', col = 'blue', lty = 2, lwd = 3)
legend('topright', inset=c(legend_space,0), c('CpN P', 'Moving P Mean'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
par(mar = c(bottom+5, left, top, right))#'mar’ A numerical vector of the form 'c(bottom, left, top, right)’
plot(percent, xaxt='n', ylab = 'Methylation % Diff.', xlab = 'CpN', type = 'l', lty = 1, lwd = 3, cex.lab=1.5, cex.axis=1, cex.main=cex_main, cex.sub=1.5, xlim = c(0.5,length(percent)+0.5), ylim = c(min(percent, sum_percent), max(percent, sum_percent)), yaxt = 'n')
axis(2,cex.axis=0.75)
points(sum_percent, xaxt='n', xlab = 'CpN', type = 'l', col = 'blue', lty = 2, lwd = 3)
par(xpd=TRUE, las=2)
legend('topright', inset=c(legend_space,0), c('CpN Percent', 'Moving Mean %'), col = c('black','blue'), lwd=c(3,3), lty=c(1,2))
axis(las=1, 1, at=1:length(xaxis), xaxis)
dev.off()
g1 <- c()
g2 <- c()
p <- c()
percent <- c()
sum_p <- c()
sum_percent <- c()
g1_means <- c()
g2_means <- c()
xaxis <- c()
