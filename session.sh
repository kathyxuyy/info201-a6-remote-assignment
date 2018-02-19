#!/bin/bash
# --------------------------------------------------------------------------------
# document here the main bash commands you are using for the server access.  The file contains
# two parts: the first one for the commands you run on your laptop, and the second one for the
# commands on the remote server.
# 
# The question lists give your some guidance what to do and report but you are free to do it
# in a different way.  If you use a graphical frontend instead of scp for copying files,
# just say which one in the appropriate place.
#
# Note: this file does not to be runnable
#
# -------------------- local commands --------------------
# 1. create a directory for this project.
joenhimes-MacBook-Pro:Desktop kathyxu$ mkdir remote

# 2. log onto the server
ssh yuanyx2@info201.ischool.uw.edu
yuanyx2@info201.ischool.uw.edu''s password:

# 3. copy the small data subset from the server to your local machine
scp yuanyx2@info201.ischool.uw.edu:/opt/data/temp_prec_subset.csv.bz2 /Users/kathyxu/Desktop/remote

# 4. copy your R-script to the server
joenhimes-MacBook-Pro:a6-remote-kathyxuyy kathyxu$ scp maps.R yuanyx2@info201.ischool.uw.edu:kathy

# 5. (after succesfully running the script remotely): copy the output files back to your computer
joenhimes-MacBook-Pro:remote kathyxu$ scp yuanyx2@info201.ischool.uw.edu:kathy/1960airtemp.png .
1960airtemp.png                             100%  610KB   1.5MB/s   00:00
joenhimes-MacBook-Pro:remote kathyxu$ scp yuanyx2@info201.ischool.uw.edu:kathy/1987airtemp.png .
1987airtemp.png                             100%  609KB   1.3MB/s   00:00
joenhimes-MacBook-Pro:remote kathyxu$ scp yuanyx2@info201.ischool.uw.edu:kathy/2014airtemp.png .
2014airtemp.png                             100%  606KB   2.2MB/s   00:00
joenhimes-MacBook-Pro:remote kathyxu$ scp yuanyx2@info201.ischool.uw.edu:kathy/1960pre.png .
1960pre.png                                 100%  465KB   2.1MB/s   00:00
joenhimes-MacBook-Pro:remote kathyxu$ scp yuanyx2@info201.ischool.uw.edu:kathy/1987pre.png .
1987pre.png                                 100%  453KB   2.3MB/s   00:00
joenhimes-MacBook-Pro:remote kathyxu$ scp yuanyx2@info201.ischool.uw.edu:kathy/2014pre.png .
2014pre.png                                 100%  466KB   2.1MB/s   00:00

# 6. inspect that the copy was successful
joenhimes-MacBook-Pro:remote kathyxu$ ls
1960airtemp.png 1987airtemp.png 2014airtemp.png
1960pre.png     1987pre.png     2014pre.png

# -------------------- remote commands --------------------
# 1. explore the data directory '/opt/data'.  How do you find out the size of the files?
[yuanyx2@info201 ~]$ cd /opt/data
[yuanyx2@info201 kathy]$ sftp

# 2. explore the first few lines of the small sample data
bzcat temp_prec_small.csv.bz2

# 3. create a directory for this project
[yuanyx2@info201 home]$ cd yuanyx2
[yuanyx2@info201 home]$ mkdir kathy

# 4. (after copying your code from the laptop): inspect the files in the project directory
[yuanyx2@info201 kathy]$ ls
assignment.R  maps.R  process_data.R

# 5. run your script
[yuanyx2@info201 kathy]$ Rscript maps.R

# 6. How do you install missing R packages?
[yuanyx2@info201 kathy]$ R

R version 3.4.1 (2017-06-30) -- "Single Candle"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-redhat-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.
> install.packages("dplyr")
Installing package into ‘/home/yuanyx2/R/x86_64-redhat-linux-gnu-library/3.4’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
Secure CRAN mirrors 

 1: 0-Cloud [https]                   2: Algeria [https]                
 3: Australia (Canberra) [https]      4: Australia (Melbourne 1) [https]
 5: Australia (Melbourne 2) [https]   6: Australia (Perth) [https]      
 7: Austria [https]                   8: Belgium (Ghent) [https]        
 9: Brazil (PR) [https]              10: Brazil (RJ) [https]            
11: Brazil (SP 1) [https]            12: Brazil (SP 2) [https]          
13: Bulgaria [https]                 14: Chile 1 [https]                
15: Chile 2 [https]                  16: China (Guangzhou) [https]      
17: China (Lanzhou) [https]          18: China (Shanghai) [https]       
19: Colombia (Cali) [https]          20: Czech Republic [https]         
21: Denmark [https]                  22: East Asia [https]              
23: Ecuador (Cuenca) [https]         24: Estonia [https]                
25: France (Lyon 1) [https]          26: France (Lyon 2) [https]        
27: France (Marseille) [https]       28: France (Montpellier) [https]   
29: France (Paris 2) [https]         30: Germany (Erlangen) [https]     
31: Germany (Göttingen) [https]      32: Germany (Münster) [https]      
33: Greece [https]                   34: Iceland [https]                
35: Indonesia (Jakarta) [https]      36: Ireland [https]                
37: Italy (Padua) [https]            38: Japan (Tokyo) [https]          
39: Japan (Yonezawa) [https]         40: Malaysia [https]               
41: Mexico (Mexico City) [https]     42: Norway [https]                 
43: Philippines [https]              44: Serbia [https]                 
45: Spain (A Coruña) [https]         46: Spain (Madrid) [https]         
47: Sweden [https]                   48: Switzerland [https]            
49: Turkey (Denizli) [https]         50: Turkey (Mersin) [https]        
51: UK (Bristol) [https]             52: UK (Cambridge) [https]         
53: UK (London 1) [https]            54: USA (CA 1) [https]             
55: USA (IA) [https]                 56: USA (KS) [https]               
57: USA (MI 1) [https]               58: USA (NY) [https]               
59: USA (OR) [https]                 60: USA (TN) [https]               
61: USA (TX 1) [https]               62: Vietnam [https]                
63: (other mirrors)  

Selection: 59

> install.packages("tidyr")
Selection: 59
> install.packages("maps")
Selection: 59
> install.packages("mapproj")
Selection: 59

# 7. (after running the script): inspect the folder for output files
[yuanyx2@info201 kathy]$ ls
1960airtemp.png  1987airtemp.png  2014airtemp.png  assignment.R  process_data.R  temp_prec_small.csv
1960pre.png      1987pre.png      2014pre.png      maps.R        Rplots.pdf