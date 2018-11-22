# -----------------------------------------------
# Import FBI Reported Crimes Data into MariaDB 
# -----------------------------------------------
# Changes in excel prior to R import
# -----------------------------------------------
# ------------ processing in R ----------
# load required libraries ----------------
#   library(stringr)
#   library(dplyr)
#   install.packages("XLConnect")
    library(XLConnect)

# ---------- import to R -----------------
# setup path
# desktop
pathName <- "E:/OneDrive/eBooks in progress/MS_SQL Book Files/FBI_Data/"
# laptop
pathName <- "C:/OneDrive/eBooks in progress/MS_SQL Book Files/FBI_Data/"

# 2016
    fileName <- "2016_Offense_Persons_by_Agency_4Rproc.xls"
    pathAndFile <- paste(pathName, fileName, sep = "")
    # import spreadsheet
    wb <- loadWorkbook(pathAndFile)
    df_2016 <- readWorksheet(wb, sheet = 1)
    View(df_2016)
	
# 2015
    fileName <- "2015_Offense_Persons_by_Agency_4Rproc.xls"
    pathAndFile <- paste(pathName, fileName, sep = "")
    # import spreadsheet
    wb <- loadWorkbook(pathAndFile)
    df_2015 <- readWorksheet(wb, sheet = 1)
    View(df_2015)
	
# 2014 - does not need to have agency columns fix, was done manually
    fileName <- "2014_Offense_Persons_by_Agency_4Rproc.xls"
    pathAndFile <- paste(pathName, fileName, sep = "")
    # import spreadsheet
    wb <- loadWorkbook(pathAndFile)
    df_2014 <- readWorksheet(wb, sheet = 1)
    View(df_2014)

# 2013
    fileName <- "2013_Offense_Persons_by_Agency_4Rproc.xls"
    pathAndFile <- paste(pathName, fileName, sep = "")
    # import spreadsheet
    wb <- loadWorkbook(pathAndFile)
    df_2013 <- readWorksheet(wb, sheet = 1)
    View(df_2013)
		
# 2012
    fileName <- "2012_Offense_Persons_by_Agency_4Rproc.xls"
    pathAndFile <- paste(pathName, fileName, sep = "")
    # import spreadsheet
    wb <- loadWorkbook(pathAndFile)
    df_2012 <- readWorksheet(wb, sheet = 1)
View(df_2012)

# ---- minor adjustments to tables --------
#  fix name of first column
names(df_2012)
names(df_2013)
names(df_2014)
names(df_2015)
names(df_2016)

# Rename year column --! use find /replace to change year JUST IN this section
colnames(df_2012)[1] <- "idYear"
colnames(df_2013)[1] <- "idYear"
colnames(df_2014)[1] <- "idYear"
colnames(df_2015)[1] <- "idYear"
colnames(df_2016)[1] <- "idYear"

# copy down State and Agency types to blank types
#wrkDF <- df_2012
#wrkDF <- df_2013
#wrkDF <- df_2014
#wrkDF <- df_2015
#wrkDF <- df_2016
head(wrkDF)
# Loop over data frame rows and fill blank state and agency_types
for (row in 1:nrow(wrkDF)) {
    curState <- wrkDF[row, "State"]
    curAgency_Type <- wrkDF[row, "Agency_Type"]
    lastState <- wrkDF[row - 1, "State"]
    lastAgency_type <- wrkDF[row - 1, "Agency_Type"]
    if (is.na(curState)) {
        wrkDF$State[row] <- lastState
    }
    if (is.na(curAgency_Type)) {
	    wrkDF$Agency_Type[row] <- lastAgency_type
    }
}
head(wrkDF)
tail(wrkDF)
# put update back into the current DF 
#df_2012b <- wrkDF
#df_2013b <- wrkDF
#df_2014b <- wrkDF
#df_2015b <- wrkDF
#df_2016b <- wrkDF


# ---- write to MySQL ----------------
# connect to MySQL
#install.packages("RMySQL")
library(RMySQL)
con_mysql <- dbConnect(RMySQL::MySQL(),
                     dbname = "fbi_state_reported_crimes", host = "127.0.0.1", port = 3306,
                     user = "root", password = "admin1")
# Push each data frame to a table
#dbWriteTable(con_mysql, "persons_2012", df_2012b)
#dbWriteTable(con_mysql, "persons_2013", df_2013b)
#dbWriteTable(con_mysql, "persons_2014", df_2014b)
#dbWriteTable(con_mysql, "persons_2015", df_2015b)
#dbWriteTable(con_mysql, "persons_2016", df_2016b, overwrite = TRUE)

)

# ----- END processing in R  --------------

# -----------------------------------------
# ---- Next, execute the rest of the cleanup in SQL script
# -----------------------------------------
