setwd("~/Desktop/PhD manuscript plan/De novo identification/de novo paper/RepeatLanscape/")

require(reshape2)
require(gridExtra)
library(ggplot2)
source("Color_RL.R")
library(cowplot) # Print legend separatly

layoutMat <- matrix(1:8, ncol = 3, byrow = TRUE)
layout(layoutMat)
par(mar = c(3,3,2,1), oma = c(3,3,1,1))


# Chiken

gal_RL <- read.table("gal_RL.csv", head=T)
gal_RL_use <- gal_RL[, 1:41]
gal_RL_use <- rev(gal_RL_use)
gal_RL_use <- melt(gal_RL_use, id.vars="divergence")

p1 <- ggplot(gal_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) + 
  theme(legend.position='none') +
  ggtitle("Chicken RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))

# Anolis

ano_RL <- read.table("ano_RL.csv", head=T)
ano_RL_use <- ano_RL[, 1:49]
ano_RL_use <- rev(ano_RL_use)
ano_RL_use <- melt(ano_RL_use, id.vars="divergence")

p2 <- ggplot(ano_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) +
  theme(legend.position='none') +
  ggtitle("Anolis RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))


# Pogona

bg_RL <- read.table("bg_RL.csv", head=T)
bg_RL_use <- bg_RL[, 1:50]
bg_RL_use <- rev(bg_RL_use)
bg_RL_use <- melt(bg_RL_use, id.vars="divergence")

p3 <- ggplot(bg_RL_use, aes(x=divergence, y=value, fill=variable)) + 
     geom_bar(stat = "identity")+
    scale_fill_manual(values = cols) +
  theme(legend.position='none') +
  ggtitle("Pogona RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))

# Platypus

oana_RL <- read.table("oana_RL.csv", head=T)
oana_RL_use <- oana_RL[, 1:51]
oana_RL_use <- rev(oana_RL_use)
oana_RL_use <- melt(oana_RL_use, id.vars="divergence")

p4 <- ggplot(oana_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) +
  theme(legend.position='none') +
  ggtitle("Platypus RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))



# Echidna

tachy_RL <- read.table("tachy_RL.csv", head=T)
tachy_RL_use <- tachy_RL[, 1:49]
tachy_RL_use <- rev(tachy_RL_use)
tachy_RL_use <- melt(tachy_RL_use, id.vars="divergence")

p5 <- ggplot(tachy_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) +
  theme(legend.position='none') +
  ggtitle("Echidna RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))

# Opossum

mdo_RL <- read.table("mdo_RL.csv", head=T)
mdo_RL_use <- mdo_RL[, 1:46]
mdo_RL_use <- rev(mdo_RL_use)
mdo_RL_use <- melt(mdo_RL_use, id.vars="divergence")

p6 <- ggplot(mdo_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) +
  theme(legend.position='none') +
  ggtitle("Opossum RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))

# Human

hg_RL <- read.table("hg_RL.csv", head=T)
hg_RL_use <- hg_RL[, 1:46]
hg_RL_use <- rev(hg_RL_use)
hg_RL_use <- melt(hg_RL_use, id.vars="divergence")

p7 <- ggplot(hg_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) +
  theme(legend.position='none') +
  ggtitle("Huamn RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8)) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic"))


grid.arrange(p1, p2, p3, p4, p5, p6, p7, ncol = 2)
#
par(mar = c(3,3,2,1), oma = c(3,3,1,1))

# Print legend
plot <- ggplot(oana_RL_use, aes(x=divergence, y=value, fill=variable)) + 
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cols) +
  ggtitle("Platypus RepeatLandscape") +
  theme(plot.title = element_text(lineheight=.8, face="bold")) +
  ylab("Percentage") +
  xlab("Kimura substitution level (CpG adjusted)") +
  theme(axis.title.x=element_text(face="italic")) +
  labs(fill = "Repeat Class")


legend <- get_legend(plot)
grid.newpage()
grid.draw(legend) 
