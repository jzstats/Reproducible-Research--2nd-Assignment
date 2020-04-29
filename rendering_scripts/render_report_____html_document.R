################################################################################
# ABOUT THIS SCRIPT: 'render_report_____html_document.R'
################################################################################

# DESCRIPTION: This script renders the script 'RepRes_analysis.Rmd'
#              to produce the 'html_document' version of the report
#              that gets exported as 'Report(version:html_document).html'
#              at the 'docs' folder of the working directory.


# PLAN:        1. Checks if the required file, 'RepRes_analysis.Rmd'
#                 exists at the working directory.
#                 If it doesn't, the execution of the script terminates.
#              2. Checks if the 'docs' folder exists at the working directory.
#                 If it doesn't, it creates the folder.
#              3. Renders the 'RepRes_analysis.Rmd' file
#                 to produce 'Report(version:html_document).html' file
#                 and exports it at the 'docs' directory.





################################################################################
# PRODUCE THE 'html_document' VERSION OF THE REPORT
################################################################################


# Load All Required Libraries
require(rmarkdown)
require(prettydoc)


# Check if the 'RepRes_analysis.Rmd' file exists at the working directory.
if ( !file.exists("RepRes_analysis.Rmd") ) {
    stop(
        "\n",
        "The required file 'RepRes_analysis.Rmd' ", "\n",
        "wasn't found at the working directory. ", "\n",
        "The execution of the script terminated ", "\n",
        "without creating the file ", "\n",
        "'Report(version:html_document).html'.", "\n",
        "Download the required file from the following link: ", "\n",
        "\t", "https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd", "\n",
        "and then execute the script again. ", "\n",
        "\n"
    )
}


# Create the output directory (if it doesn't exists already)
if (!dir.exists("docs")) {
    dir.create("docs")
}


# Render the 'RepRes_analysis.Rmd' file
# to produce the 'html_document' version of the report
# and exports the 'Report(version:html_document).html' file
# at the 'docs' directory.
render(
    input = "RepRes_analysis.Rmd",
    output_format = html_document(),
    output_file = "Report(version:html_document).html",
    output_dir = "docs"
)


# THE END ######################################################################
