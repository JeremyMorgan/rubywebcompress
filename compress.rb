# Ruby Web Compress 
# Removes white space, blank lines and line breaks from html
# Not true compression, but makes less work for gzip

# read each file to be compressed
# you must change "files" to the name of the directory containing your html

Dir.glob("files/**/*.{htm,html}").each do|ourfile|
        # create a variable for output
        linedata = ""
        #read each line of the file
        File.open(ourfile).readlines.each do |line|
            # removes spaces and tabs
            line = line.gsub(/\s+/, " ").strip.delete("\n")
            # combine into one string
            linedata << line
    end
    # open the file to write it
    compfile = open(ourfile, "w")
    # write single string to file
    compfile.write(linedata)
    # close it
    compfile.close
    end
