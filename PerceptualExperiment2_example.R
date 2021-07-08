
library('afex')
library('ARTool')
library('effectsize')
library('emmeans')
library('psych')
library('FSA')
library('lattice')
library('ordinal')
library('car')
library('RVAideMemoire')
library('multcompView')
library('lsmeans')
library('rcompanion')
library('multcomp') 
library('Rmisc')

#The dataset.

dataset <- read.csv('~/R/Main_analysis.csv')
dataset$Gender <- factor(dataset$Gender) #Gender: Character gender
dataset$Race <- factor(dataset$Race) #Race: Participant race
dataset$Prace <- factor(dataset$Prace) #Prace: Participant race
dataset$Pgender <- factor(dataset$Pgender) #Pgender: Participant gender
dataset$Blendshape <- factor(dataset$Blendshape)


#ANOVA assumption test
try <- aggregate(Rating ~ ID + Prace + Race + Blendshape, data = dataset, mean)
  
  a1 <- aov_ez("ID","Rating",
               try,
                    #between=c("ScreenSize"),
                    between="Prace",
                     within=c("Blendshape", "Race"),
                   #  within=NULL,
                     anova_table = list(correction = "none", es = "pes"));
  
  normality_test <- shapiro.test(residuals(a1$lm))
  print(normality_test)
  residuals_are_normally_distributed = normality_test$p.value > 0.05

#ANOVA   
  
  if(residuals_are_normally_distributed == TRUE){ # parametric
    print("parametric")
    print(a1)
 
    
    
#Post-hoc tests for the ANOVA analysis + Descriptive statistics
  

    if(a1$anova_table$`Pr(>F)`[1]< 0.06)
    {
      m1 <- emmeans(a1$aov,"Prace")
      print(pairs(m1))


    }
    
    if(a1$anova_table$`Pr(>F)`[2] < 0.06)
    {
      m1 <- emmeans(a1$aov,"Race")
      print(pairs(m1))
      
      
    }

    if(a1$anova_table$`Pr(>F)`[4]< 0.06)
    {
      m1 <- emmeans(a1$aov,c("Gender","Race"))
      print(pairs(m1))
    }
    
    
    
 # ART ANALYSIS
    
  }else{ 
    
    str_command <- paste0("art_model <- art(", "Rating","~", 
                           "Prace", "*", "Blendshape", "*", "Race", "+ (1|ID),data=",deparse(substitute(try)),")");
    


    eval(parse(text=str_command))
    anova_table <- anova(art_model);
    print(anova_table)

    
# POSTHOCS:
    
    if(anova_table$`Pr(>F)`[2] <0.06)
    {
      print("Blendshape influence")
      
      lm <- artlm(art_model, "Blendshape");
      m1 <- emmeans(lm, "Blendshape");
      
      print(pairs(m1))
      
      # print(multcomp::cld(m1))
      # print(multcomp::cld(m1))
      #m1.glht <- as.glht(pairs(m1))
      #print(summary(m1.glht, test=adjusted("bonferroni")))
      
    }
    
    if(anova_table$`Pr(>F)`[3] <0.06)
    {
      print("Gender influence")
      
      lm <- artlm(art_model, "Gender");
      m1 <- emmeans(lm, "Gender");
      print(pairs(m1))
      
      # print(multcomp::cld(m1))
      
      # print(multcomp::cld(m1))
      #m1.glht <- as.glht(pairs(m1))
      #print(summary(m1.glht, test=adjusted("bonferroni")))
    }
    

    if(anova_table$`Pr(>F)`[6] <0.06)
    {

      print("Race / Blendshape interaction")

      lm <- artlm(art_model, paste0("Blendshape",":","Race"));
      m1 <- emmeans(lm, "Race","Blendshape");
      m1
      #
      print(multcomp::cld(m1))

  
# Other interaction tests
      library(phia)



       m1 <-  contrast(emmeans(artlm(art_model, "Race:Blendshape"), ~ Prace:Blendshape), method="pairwise", interaction=TRUE)


      # print(pairs(m1))
           print(m1)
      
      # print(multcomp::cld(m1))

    }
    
  }
  
  
 


