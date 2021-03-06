# template function

# def function_name(things_the_function_needs)
#     results = do_some_stuff_to(things_the_function_needs)
#     return results
# end

# functions organize your code so that others can see what it does. By compartmentalizing and giving clear descriptions for the pieces, you can see what things are meant to do quicker and work with projects done by others more easily.

# This script is going to take in a file and convert it for markdown.
# This includes adding a header to the file, but it might include other things, like coverting html tags to markdown tags, etc.

def open_input_file(filename)
    # opens a file that we will only read
    return File.open(filename, 'r').read
end

def open_output_file(filename)
    # opens a file that we will write to.
    return File.open(filename, 'w')
end

def add_header_to_file(filename)
    # adds the header that markdwon requires to a file you give it
    header = 
    """---
layout: post
title: \"My Blog Post\"
date: 2016-11-29 08:48:48 -0500
---
"""
    filename.write(header)
end

def add_old_content_to_new_file(input, output)
    # takes the contents of the old file and puts it in the new file.
    output.write(input)
end

def convert_file_to_markdown(input, output)
    add_header_to_file(output)
    add_old_content_to_new_file(input, output)
end


input_file = open_input_file('example_file.txt')
output_file = open_output_file('2016-11-29-revised-example-file.markdown')

convert_file_to_markdown(input_file, output_file)

# note: there are still some things you would want to change to make this more flexible. You'd want it to read the date and name from the file itself, most likely. and then have that date and name become part of the new filename.