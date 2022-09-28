image.scale <- function(zlim, col, horiz=FALSE, ylim=NULL, xlim=NULL, ...) {
    breaks <- seq(zlim[1], zlim[2], length.out=(length(col)+1));
    poly <- vector(mode="list", length(col))
        for(i in seq(poly)) {
            poly[[i]] <- c(breaks[i], breaks[i+1], breaks[i+1], breaks[i])
        }
    xaxt <- ifelse(horiz, "s", "n");
    yaxt <- ifelse(horiz, "n", "s");
    if (horiz) {YLIM <- c(0,1); XLIM <- range(breaks)}
    if (!horiz) {YLIM <- range(breaks); XLIM <- c(0,1)}
    if (is.null(xlim)) xlim=XLIM;
    if (is.null(ylim)) ylim=YLIM;
    plot(1,1,t="n",ylim=ylim, xlim=xlim, xaxt=xaxt, yaxt=yaxt, xaxs="i", yaxs="i", ann=F, ...);
    for(i in seq(poly)) {
        if (horiz) {
            polygon(poly[[i]], c(0,0,1,1), col=col[i], border=NA);
        }
        if (!horiz) {
            polygon(c(0,0,1,1), poly[[i]], col=col[i], border=NA);
        }
    }
}

plot_contact <- function(mat, zlim=NULL, mode=c('square','upper','lower'), title='', widths=c(1,4), heights=widths, useRaster=T, restore.par=T, image.only=F, value=F,
         color.palette=WhBlRdYl, under.color=color.palette(101)[1], over.color=color.palette(101)[101], na.color=under.color, cex=0.5, ...) {
    old.par <- par(no.readonly=T);

    col <- color.palette(101);
    if (is.null(zlim)) { zlim = range(mat[!is.na(mat) & is.finite(mat)]); }
    binsize <- (zlim[2]-zlim[1])/length(col);
    n <- ncol(mat)
    k.na <- is.na(mat);
    k.under <- !k.na & mat<zlim[1];
    k.over <- !k.na & mat>zlim[2];
    mat[k.under] <- zlim[1] - binsize;
    mat[k.over] <- zlim[2] + binsize;
    image.col <- col;
    if (sum(k.over) > 0) image.col <- c(image.col, over.color);
    if (sum(k.under) > 0) image.col <- c(under.color, image.col);
    if (sum(k.na) > 0) image.col <- c(na.color, image.col);
    mat[k.na] <- zlim[1] - 2*binsize;
    if (mode == 'lower') {
        k <- sapply(1:n, function(i) (1:n) > i);
    } else if (mode == 'bottom') {
        k <- sapply(1:n, function(i) (1:n) < i);
    } else {
        k <- c()
    }
    mat[k] <- NA;

    if (image.only) {
        par(mar=c(0,0,0,0), ann=F, xaxt='n',yaxt='n');
        image(mat, col=image.col, useRaster=useRaster, ...);
    } else {
        layout(matrix(1:4, ncol=2, byrow=T), widths=widths, heights=heights);
        par(cex=cex);
        plot(c(0,1), c(0,1), type='n', ann=F, axes=F); # plot an empty placeholder

        par(mar=c(3,3,4,1), cex=cex, lab=c(9,9,0));
        hist(mat, breaks=length(col), freq=F, col='grey', border=F, xaxs='i', yaxt='n', bty='o', main='');
        title(main=title);
        box();

        scale.col = color.palette(21);
        par(mar=c(3,4,1,4), cex=cex);
        image.scale(zlim, col=scale.col, las=1, ...);

        par(mar=c(3,3,1,1), cex=cex, ann=F);
        image(mat, col=image.col, useRaster=useRaster, xaxt='n', yaxt='n', xaxs='i', yaxs='i');
    }

    if (restore.par) on.exit(par(old.par));
    if (value) return(mat);
}

plot_contact_triangle <- function(mat, zlim=NULL, mode=c('square','upper','lower'),  max.d=nrow(mat), title='', maxpixels=ncol(mat)*nrow(mat), restore.par=F,
        color.palette=WhBlRdYl, over.color=color.palette(101)[101], under.color=color.palette(101)[1], na.color=under.color, plot=T, smooth=F, ...) {
    suppressWarnings(suppressMessages(require(raster)));
    mode <- match.arg(mode);
    n <- ncol(mat);
    if (class(mat)=='raster') {
        ras <- mat;
    } else {
        col = colalpha(color.palette(101),1);
        if (is.null(zlim)) { zlim = range(mat[!is.na(mat) & is.finite(mat)]); }
        binsize <- (zlim[2]-zlim[1])/length(col);
        k.na = is.na(mat);
        k.under = !k.na & mat<zlim[1];
        k.over = !k.na & mat>zlim[2];
        mat[k.under] <- zlim[1] - binsize;
        mat[k.over] <- zlim[2] + binsize;
        mat[k.na] <- zlim[1] - 2*binsize;

        image.col <- col;
        if (sum(k.over) > 0) image.col <- c(image.col, over.color);
        if (sum(k.under) > 0) image.col <- c(under.color, image.col);
        if (sum(k.na) > 0) image.col <- c(na.color, image.col);

        rmat <- mat - min(mat[!is.na(mat) & is.finite(mat)]);
        ras <- raster(rmat/max(rmat,na.rm=T));
        if (smooth) ras <- focal(ras, matrix(1,3,3), mean, na.rm=T)
        ras <- as.raster(ras, col=image.col, maxpixels=maxpixels);
    }

    if (plot==T) {
        old.par <- par(no.readonly=T);
        par(ann=F, mar=c(2,2,2,2), bty='n', xaxs='i', yaxs='i');
        sqrt2 = sqrt(2);
        if (mode == 'upper') {
            k <- sapply(1:n, function(i) (1:n) > i | (1:n) < (i-max.d));
            yrange <- c(max.d/n-2, max.d/n)*0.5;
        } else if (mode == 'lower') {
            k <- sapply(1:n, function(i) (1:n) > (i+max.d) | (1:n) < i);
            yrange <- c(-max.d/n, 2-max.d/n)*0.5;
        } else {
            k <- sapply(1:n, function(i) (1:n) > (i+max.d) | (1:n) < (i-max.d));
            yrange <- c(-0.5, 0.5);
        }
        ras[k] <- NA;
        plot(c(0,1), yrange, type='n', axes=F, bty='o', ...);
        box();

        scale = xinch()/yinch();
        width = 1/sqrt2;
        height = width/scale;
        xleft = 0.5;
        xright = xleft + width;
        ybottom = 0 - height/sqrt2;
        ytop = ybottom + height;
        angle = 45;

        par(xpd=T);
        rasterImage(ras,xleft=xleft,xright=xright,ybottom=ybottom,ytop=ytop,angle=angle);
        par(xpd=F);
        if (restore.par) on.exit(par(old.par));
        image.ybottom <- 0.5-(0.5-ybottom)*max.d/n;
        invisible(yrange);
    } else {
        ras;
    }
}
