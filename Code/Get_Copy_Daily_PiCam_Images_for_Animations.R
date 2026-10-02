setwd('../')
git.fp = getwd()

# Set House and PiCam ID vars
house = 'House_1'
picam = '4_PiCam18'

# Set input filepath
image.in.fp = paste(git.fp, 'Data', 'Images', house, picam, 'Raw_Images', sep = '/')

# Set output filepath
image.out.fp = paste(git.fp, 'Data', 'Images', house, picam, 'Images_for_GIFs', sep = '/')

# Select images collected at 12:00 PM (noon) and copy them to output filepath
files.to.copy = list.files(image.in.fp, pattern = '12_00.jpg', full.names = TRUE)
file.copy(files.to.copy, image.out.fp)
