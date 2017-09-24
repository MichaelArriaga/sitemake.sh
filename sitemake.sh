#!bin/bash
# html template
# <!DOCTYPE html>
#<html>
#<head>
#<meta charset="UTF-8">
#<title>Title of the document</title>
#</head>

#<body>
#Content of the document......
#</body>

#</html>
#
# Jquery CDN
# <script src="https://code.jquery.com/jquery-3.1.1.js" integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>
# Bootstrap CDN
# <!-- Latest compiled and minified CSS -->
# <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
#
# <!-- Optional theme -->
# <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
#
# <!-- Latest compiled and minified JavaScript -->
# <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


#Script starts
echo "***Welcome!***"
echo "This program will create the necessary files and directories for a blank website as well as create a default html template with optional Bootstrap & Jquery additions"
echo "Would you like to continue? y/n"
read yn

if [[ ${yn} = n ]]; then
  echo "Goodbye! to rerun type \"bash sitemake.sh\" in the terminal."
  exit
elif [[ ${yn} = y ]]; then
  echo
else
  echo "That is not a valid choice! Exiting...to rerun type \"bash sitemake.sh\" in the terminal."
  exit
fi


echo "What would you like to name the new site? (Must be one word. Cannot contain spaces)"
read sitename

mkdir ${sitename}

printf "\n"

echo "****Your sites name is \"${sitename}\"****"
printf "\n"

echo "======================"
echo "Site setup options"
echo "======================"
echo "(1) Basic"
echo "(2) With Bootstrap"
echo "(3) Bootstrap + Jquery"
echo "(q) Quit"
echo "----------------------"
echo "Enter your Choice:"
read choice

if [[ ${choice} = 2 ]]; then
  # Write to index.html
  echo -e "<!DOCTYPE html>\n<head>\n<meta charset=\"UTF-8\">\n<link rel=\"stylesheet\" href=\"./css/styles.css\">\n<!-- Latest compiled and minified CSS -->
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n<!-- Optional theme -->
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n<!-- Latest compiled and minified JavaScript -->
<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n\n<!-- Page starts here -->\n\n<title>Title of the document</title>\n</head>\n\n<body>\n\n<script src=\"./js/script.js\"></script>\n</body>\n\n</html>" >> ${sitename}/index.html

# Create and echo directories and files
mkdir ${sitename}/js ${sitename}/images ${sitename}/css
echo -e "/* A brand new CSS file for ${sitename}*/\n/* Delete this comment */" >> ${sitename}/css/styles.css
echo -e "// A brand new JS file for ${sitename}\n// Delete this comment" >> ${sitename}/js/script.js
echo -e "/${sitename}/ directory was created successfully!"
echo -e "/${sitename}/css directory was created successfully!"
echo -e "/${sitename}/css/styles.css file was created successfully!"
echo -e "/${sitename}/images directory was created successfully!"
echo -e "/${sitename}/js directory was created successfully!"
echo -e "/${sitename}/js/script.js file was created successfully!"
echo -e "/${sitename}/index.html file was created successfully!"
echo -e "/${sitename}/index.html was given a default HTML template"
echo -e "The Bootstrap CDN & ${sitename}/css/styles.css links were embedded into ${sitename}/index.html"
echo -e "ENJOY!!"


elif [[ ${choice} = 3 ]]; then
  # Write to index.html
echo -e "<!DOCTYPE html>\n<head>\n<meta charset=\"UTF-8\">\n<link rel=\"stylesheet\" href=\"./css/styles.css\">\n<!--Jquery CDN -->
<script src=\"https://code.jquery.com/jquery-3.1.1.js\" integrity=\"sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=\" crossorigin=\"anonymous\"></script>\n<!-- Latest compiled and minified CSS -->
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n<!-- Optional theme -->
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n<!-- Latest compiled and minified JavaScript -->
<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n\n<!-- Page starts here -->\n\n<title>Title of the document</title>\n</head>\n\n<body>\n\n<script src=\"./js/script.js\"></script>\n</body>\n\n</html>" >> ${sitename}/index.html

# Create and echo directories and files
mkdir ${sitename}/js ${sitename}/images ${sitename}/css
echo -e "/* A brand new CSS file for ${sitename}*/\n/* Delete this comment */" >> ${sitename}/css/styles.css
echo -e "// A brand new JS file for ${sitename}\n// Delete this comment" >> ${sitename}/js/script.js
echo -e "/${sitename}/ directory was created successfully!"
echo -e "/${sitename}/css directory was created successfully!"
echo -e "/${sitename}/css/styles.css file was created successfully!"
echo -e "/${sitename}/images directory was created successfully!"
echo -e "/${sitename}/js directory was created successfully!"
echo -e "/${sitename}/js/script.js file was created successfully!"
echo -e "/${sitename}/index.html file was created successfully!"
echo -e "/${sitename}/index.html was given a default HTML template"
echo -e "The Bootstrap CDN, Jquery CDN & ${sitename}/css/styles.css links were embedded into ${sitename}/index.html"
echo -e "ENJOY!!"

elif [[ ${choice} = 1 ]]; then
  # Write to index.html
  echo -e "<!DOCTYPE html>\n<head>\n<meta charset=\"UTF-8\">\n<link rel=\"stylesheet\" href=\"./css/styles.css\">\n\n<!-- Page starts here -->\n\n<title>Title of the document</title>\n</head>\n\n\n<body>\n<script src=\"./js/script.js\"></script>\n</body>\n\n</html>" >> ${sitename}/index.html

  # Create and echo directories and files
  mkdir ${sitename}/js ${sitename}/images ${sitename}/css
  echo -e "/* A brand new CSS file for ${sitename}*/\n/* Delete this comment */" >> ${sitename}/css/styles.css
  echo -e "// A brand new JS file for ${sitename}\n// Delete this comment" >> ${sitename}/js/script.js
  echo -e "/${sitename}/ directory was created successfully!"
  echo -e "/${sitename}/css directory was created successfully!"
  echo -e "/${sitename}/css/styles.css file was created successfully!"
  echo -e "/${sitename}/images directory was created successfully!"
  echo -e "/${sitename}/js directory was created successfully!"
  echo -e "/${sitename}/js/script.js file was created successfully!"
  echo -e "/${sitename}/index.html file was created successfully!"
  echo -e "/${sitename}/index.html was given a default HTML template"
  echo -e "/${sitename}/css/styles.css link was embedded into ${sitename}/index.html"
  echo -e "ENJOY!!"

elif [[ ${choice} = q ]]; then
  echo "Quitting...to rerun type \"bash sitemake.sh\" in the terminal."
  exit

else
  echo "That is not a valid choice! Exiting...."
  exit
fi
