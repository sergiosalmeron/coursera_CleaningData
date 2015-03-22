#set the default folder
folder<-"./UCI HAR Dataset/"
#get the filename of the files to be used (those .txt in the folders test and train)
filenames <- c(list.files(paste(folder[1], "test/", sep = ""), pattern="*.txt", full.names=TRUE), list.files(paste(folder[1], "train/", sep = ""), pattern="*.txt", full.names=TRUE)) 
#read the variable names for the x_train.txt and x_test.txt files
features<- read.table(file = paste(folder[1], "features.txt", sep = ""), header = FALSE)
#read the activity labels for the y_train.txt and y_test.txt files
actlabels<-read.table(file = paste(folder[1], "activity_labels.txt", sep = ""), header = FALSE)
#read each different file and create a variable with the corresponding filename
for (filename in filenames){
  a<-strsplit(filename,split = '/')
  varname<-gsub(a[[1]][length(a[[1]])], pattern = ".txt", replacement = "")
  assign(varname, read.table(file = filename, header = FALSE))
}
#merge train and test data sets into one
x<-rbind(X_test,X_train)
y<-rbind(y_test,y_train)
subject<-rbind(subject_test,subject_train)



#select from the x variables, those to be used (means and standard deviations).
validfeatures<-features[(grepl(features$V2, pattern = "mean\\(\\)|std\\(\\)")),]
x<-x[validfeatures$V1]
#set the name of the variables
names(x)<-validfeatures$V2

#set the activity name to be easily readable
for(i in 1:length(y$V1)){
  y$V2[i]<-as.character(actlabels$V2[y$V1[i]])
}

#set the name of the variables subject and activity
names(subject)<-"subject"
names(y)[2]<-"activity"

#merge all data into one dataset
alldata<-cbind(x,subject,y[2])

#aggregate the output dataset calculating the average of each variable for each activity and each subject.
out<-aggregate(.~subject + activity, alldata, mean )
#update the name of the mean values generated to add the ".mean" suffix.
names(out)<-c(names(out[1:2]), paste(names(out[3:68]),".mean",sep=""))
out